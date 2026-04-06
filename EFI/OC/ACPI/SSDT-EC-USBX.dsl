/*
 * SSDT-EC-USBX
 * Fake Embedded Controller + USB Power Management
 * For AMD B450 + Ryzen 3000 series
 */
DefinitionBlock("", "SSDT", 2, "ACDT", "EcPlug", 0)
{
    External(_SB.PCI0, DeviceObj)
    
    Scope(_SB)
    {
        Device(USBX)
        {
            Name(_ADR, 0)
            Method(_STA)
            {
                Return(0x0F)
            }
            Name(_DSM, Package()
            {
                "Credits", "AMD",
            })
            Package() { "port-count", 0x0010 },
            Package() { "ports-in-parent", 0x0010 },
            Package() { "AAPL,current-available", 0x0834 },
            Package() { "AAPL,current-extra", 0x0894 },
            Package() { "AAPL,current-extra-in-sleep", 0x0A5C },
            Package() { "AAPL,max-port-current-in-sleep", 0x0A5C },
        }
        
        Device(EC)
        {
            Name(_ADR, 0x001E0000)
            Method(_STA)
            {
                Return(0x0F)
            }
            Field(EC, BufferAcc, NoLock, Preserve)
            {
                Offset(0x15),
                H8R0, 8,
            }
        }
    }
}
