/*
 * SSDT-PLUG
 * CPU Power Management for AMD Ryzen
 */
DefinitionBlock("", "SSDT", 2, "ACDT", "CpuPlug", 0)
{
    External(MethodObj, MethodObj, 0)
    
    Scope(_SB)
    {
        Method(PR.PR00)
        {
            If (CondRefOf(\_SB.PR00)) { Return(\_SB.PR00) }
            Else { Return(0) }
        }
        
        Device(CPU0)
        {
            Name(_HID, "ACPI0004")
            Name(_UID, 0)
            Method(_STA)
            {
                If (CondRefOf(PR.PR00)) { Return(PR.PR00._STA()) }
                Else { Return(0x0B) }
            }
        }
        
        Device(CPU1)
        {
            Name(_HID, "ACPI0004")
            Name(_UID, 1)
            Method(_STA)
            {
                If (CondRefOf(PR.PR00)) { Return(PR.PR00._STA()) }
                Else { Return(0x0B) }
            }
        }
        
        Device(CPU2)
        {
            Name(_HID, "ACPI0004")
            Name(_UID, 2)
            Method(_STA)
            {
                If (CondRefOf(PR.PR00)) { Return(PR.PR00._STA()) }
                Else { Return(0x0B) }
            }
        }
        
        Device(CPU3)
        {
            Name(_HID, "ACPI0004")
            Name(_UID, 3)
            Method(_STA)
            {
                If (CondRefOf(PR.PR00)) { Return(PR.PR00._STA()) }
                Else { Return(0x0B) }
            }
        }
        
        Device(CPU4)
        {
            Name(_HID, "ACPI0004")
            Name(_UID, 4)
            Method(_STA)
            {
                If (CondRefOf(PR.PR00)) { Return(PR.PR00._STA()) }
                Else { Return(0x0B) }
            }
        }
        
        Device(CPU5)
        {
            Name(_HID, "ACPI0004")
            Name(_UID, 5)
            Method(_STA)
            {
                If (CondRefOf(PR.PR00)) { Return(PR.PR00._STA()) }
                Else { Return(0x0B) }
            }
        }
    }
}
