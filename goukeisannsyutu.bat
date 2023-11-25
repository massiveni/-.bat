@powershell -NoProfile -ExecutionPolicy Unrestricted "$s=[scriptblock]::create((gc \"%~f0\"|?{$_.readcount -gt 1})-join\"`n\");&$s" %*&goto:eof
[void][System.Reflection.Assembly]::LoadWithPartialName("System")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$form = New-Object System.Windows.Forms.Form
$form.Size = New-Object System.Drawing.Size(500, 800)
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle

$1gatulabel = New-Object System.Windows.Forms.label
$1gatulabel.Text = "1"+[char]0x6708+[char]0xFF1A+" "+[char]0x00A5
$1gatulabel.Location = New-Object System.Drawing.Point(10, 10)
$1gatulabel.Size = New-Object System.Drawing.Size(40, 20)
$form.Controls.Add($1gatulabel)

$numericUpDown1 = New-Object Windows.Forms.NumericUpDown
$numericUpDown1.Location = New-Object Drawing.Point(60,10)
$numericUpDown1.Size = New-Object Drawing.Size(400, 20)
$numericUpDown1.Minimum = 0
$numericUpDown1.Maximum = 100000000
$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 100
$timer.add_Tick({
    if ($numericUpDown1.Text -eq [string]::Empty) {
        $numericUpDown1.Text = $numericUpDown1.Minimum
    }
})
$numericUpDown1.add_Enter({
    $timer.Start()
})
$numericUpDown1.add_Leave({
    $timer.Stop()
})
$form.Controls.Add($numericUpDown1)

$2gatulabel = New-Object System.Windows.Forms.label
$2gatulabel.Text = "2"+[char]0x6708+[char]0xFF1A+" "+[char]0x00A5
$2gatulabel.Location = New-Object System.Drawing.Point(10, 40)
$2gatulabel.Size = New-Object System.Drawing.Size(40, 20)
$form.Controls.Add($2gatulabel)

$numericUpDown2 = New-Object Windows.Forms.NumericUpDown
$numericUpDown2.Location = New-Object Drawing.Point(60,40)
$numericUpDown2.Size = New-Object Drawing.Size(400, 20)
$numericUpDown2.Minimum = 0
$numericUpDown2.Maximum = 100000000
$timer2 = New-Object System.Windows.Forms.Timer
$timer2.Interval = 100
$timer2.add_Tick({
    if ($numericUpDown2.Text -eq [string]::Empty) {
        $numericUpDown2.Text = $numericUpDown2.Minimum
    }
})
$numericUpDown2.add_Enter({
    $timer2.Start()
})
$numericUpDown2.add_Leave({
    $timer2.Stop()
})
$form.Controls.Add($numericUpDown2)

$3gatulabel = New-Object System.Windows.Forms.label
$3gatulabel.Text = "3"+[char]0x6708+[char]0xFF1A+" "+[char]0x00A5
$3gatulabel.Location = New-Object System.Drawing.Point(10, 70)
$3gatulabel.Size = New-Object System.Drawing.Size(40, 20)
$form.Controls.Add($3gatulabel)

$numericUpDown3 = New-Object Windows.Forms.NumericUpDown
$numericUpDown3.Location = New-Object Drawing.Point(60,70)
$numericUpDown3.Size = New-Object Drawing.Size(400, 20)
$numericUpDown3.Minimum = 0
$numericUpDown3.Maximum = 100000000
$timer3 = New-Object System.Windows.Forms.Timer
$timer3.Interval = 100
$timer3.add_Tick({
    if ($numericUpDown3.Text -eq [string]::Empty) {
        $numericUpDown3.Text = $numericUpDown3.Minimum
    }
})
$numericUpDown3.add_Enter({
    $timer3.Start()
})
$numericUpDown3.add_Leave({
    $timer3.Stop()
})
$form.Controls.Add($numericUpDown3)

$4gatulabel = New-Object System.Windows.Forms.label
$4gatulabel.Text = "4"+[char]0x6708+[char]0xFF1A+" "+[char]0x00A5
$4gatulabel.Location = New-Object System.Drawing.Point(10,100)
$4gatulabel.Size = New-Object System.Drawing.Size(40, 20)
$form.Controls.Add($4gatulabel)

$numericUpDown4 = New-Object Windows.Forms.NumericUpDown
$numericUpDown4.Location = New-Object Drawing.Point(60,100)
$numericUpDown4.Size = New-Object Drawing.Size(400, 20)
$numericUpDown4.Minimum = 0
$numericUpDown4.Maximum = 100000000
$timer4 = New-Object System.Windows.Forms.Timer
$timer4.Interval = 100
$timer4.add_Tick({
    if ($numericUpDown4.Text -eq [string]::Empty) {
        $numericUpDown4.Text = $numericUpDown4.Minimum
    }
})
$numericUpDown4.add_Enter({
    $timer4.Start()
})
$numericUpDown4.add_Leave({
    $timer4.Stop()
})
$form.Controls.Add($numericUpDown4)

$5gatulabel = New-Object System.Windows.Forms.label
$5gatulabel.Text = "5"+[char]0x6708+[char]0xFF1A+" "+[char]0x00A5
$5gatulabel.Location = New-Object System.Drawing.Point(10,130)
$5gatulabel.Size = New-Object System.Drawing.Size(40, 20)
$form.Controls.Add($5gatulabel)

$numericUpDown5 = New-Object Windows.Forms.NumericUpDown
$numericUpDown5.Location = New-Object Drawing.Point(60,130)
$numericUpDown5.Size = New-Object Drawing.Size(400, 20)
$numericUpDown5.Minimum = 0
$numericUpDown5.Maximum = 100000000
$timer5 = New-Object System.Windows.Forms.Timer
$timer5.Interval = 100
$timer5.add_Tick({
    if ($numericUpDown5.Text -eq [string]::Empty) {
        $numericUpDown5.Text = $numericUpDown5.Minimum
    }
})
$numericUpDown5.add_Enter({
    $timer5.Start()
})
$numericUpDown5.add_Leave({
    $timer5.Stop()
})
$form.Controls.Add($numericUpDown5)

$6gatulabel = New-Object System.Windows.Forms.label
$6gatulabel.Text = "6"+[char]0x6708+[char]0xFF1A+" "+[char]0x00A5
$6gatulabel.Location = New-Object System.Drawing.Point(10,160)
$6gatulabel.Size = New-Object System.Drawing.Size(40, 20)
$form.Controls.Add($6gatulabel)

$numericUpDown6 = New-Object Windows.Forms.NumericUpDown
$numericUpDown6.Location = New-Object Drawing.Point(60,160)
$numericUpDown6.Size = New-Object Drawing.Size(400, 20)
$numericUpDown6.Minimum = 0
$numericUpDown6.Maximum = 100000000
$timer6 = New-Object System.Windows.Forms.Timer
$timer6.Interval = 100
$timer6.add_Tick({
    if ($numericUpDown6.Text -eq [string]::Empty) {
        $numericUpDown6.Text = $numericUpDown6.Minimum
    }
})
$numericUpDown6.add_Enter({
    $timer6.Start()
})
$numericUpDown6.add_Leave({
    $timer6.Stop()
})
$form.Controls.Add($numericUpDown6)

$SummerBonuslabel = New-Object System.Windows.Forms.label
$SummerBonuslabel.Text = [char]0x30DC+"-"+[char]0x30CA+[char]0x30B9+"1"+" "+[char]0x00A5
$SummerBonuslabel.Location = New-Object System.Drawing.Point(10,190)
$SummerBonuslabel.Size = New-Object System.Drawing.Size(60, 20)
$form.Controls.Add($SummerBonuslabel)

$numericUpDownSummerBonus = New-Object Windows.Forms.NumericUpDown
$numericUpDownSummerBonus.Location = New-Object Drawing.Point(80,190)
$numericUpDownSummerBonus.Size = New-Object Drawing.Size(400, 20)
$numericUpDownSummerBonus.Minimum = 0
$numericUpDownSummerBonus.Maximum = 100000000
$timerSummerBonus = New-Object System.Windows.Forms.Timer
$timerSummerBonus.Interval = 100
$timerSummerBonus.add_Tick({
    if ($numericUpDownSummerBonus.Text -eq [string]::Empty) {
        $numericUpDownSummerBonus.Text = $numericUpDownSummerBonus.Minimum
    }
})
$numericUpDownSummerBonus.add_Enter({
    $timerSummerBonus.Start()
})
$numericUpDownSummerBonus.add_Leave({
    $timerSummerBonus.Stop()
})
$form.Controls.Add($numericUpDownSummerBonus)

$7gatulabel = New-Object System.Windows.Forms.label
$7gatulabel.Text = "7"+[char]0x6708+[char]0xFF1A+" "+[char]0x00A5
$7gatulabel.Location = New-Object System.Drawing.Point(10, 220)
$7gatulabel.Size = New-Object System.Drawing.Size(40, 20)
$form.Controls.Add($7gatulabel)

$numericUpDown7 = New-Object Windows.Forms.NumericUpDown
$numericUpDown7.Location = New-Object Drawing.Point(60,220)
$numericUpDown7.Size = New-Object Drawing.Size(400, 20)
$numericUpDown7.Minimum = 0
$numericUpDown7.Maximum = 100000000
$timer7 = New-Object System.Windows.Forms.Timer
$timer7.Interval = 100
$timer7.add_Tick({
    if ($numericUpDown7.Text -eq [string]::Empty) {
        $numericUpDown7.Text = $numericUpDown7.Minimum
    }
})
$numericUpDown7.add_Enter({
    $timer7.Start()
})
$numericUpDown7.add_Leave({
    $timer7.Stop()
})
$form.Controls.Add($numericUpDown7)

$8gatulabel = New-Object System.Windows.Forms.label
$8gatulabel.Text = "8"+[char]0x6708+[char]0xFF1A+" "+[char]0x00A5
$8gatulabel.Location = New-Object System.Drawing.Point(10, 250)
$8gatulabel.Size = New-Object System.Drawing.Size(40, 20)
$form.Controls.Add($8gatulabel)

$numericUpDown8 = New-Object Windows.Forms.NumericUpDown
$numericUpDown8.Location = New-Object Drawing.Point(60,250)
$numericUpDown8.Size = New-Object Drawing.Size(400, 20)
$numericUpDown8.Minimum = 0
$numericUpDown8.Maximum = 100000000
$timer8 = New-Object System.Windows.Forms.Timer
$timer8.Interval = 100
$timer8.add_Tick({
    if ($numericUpDown8.Text -eq [string]::Empty) {
        $numericUpDown8.Text = $numericUpDown8.Minimum
    }
})
$numericUpDown8.add_Enter({
    $timer8.Start()
})
$numericUpDown8.add_Leave({
    $timer8.Stop()
})
$form.Controls.Add($numericUpDown8)

$9gatulabel = New-Object System.Windows.Forms.label
$9gatulabel.Text = "9"+[char]0x6708+[char]0xFF1A+" "+[char]0x00A5
$9gatulabel.Location = New-Object System.Drawing.Point(10, 280)
$9gatulabel.Size = New-Object System.Drawing.Size(40, 20)
$form.Controls.Add($9gatulabel)

$numericUpDown9 = New-Object Windows.Forms.NumericUpDown
$numericUpDown9.Location = New-Object Drawing.Point(60,280)
$numericUpDown9.Size = New-Object Drawing.Size(400, 20)
$numericUpDown9.Minimum = 0
$numericUpDown9.Maximum = 100000000
$timer9 = New-Object System.Windows.Forms.Timer
$timer9.Interval = 100
$timer9.add_Tick({
    if ($numericUpDown9.Text -eq [string]::Empty) {
        $numericUpDown9.Text = $numericUpDown9.Minimum
    }
})
$numericUpDown9.add_Enter({
    $timer9.Start()
})
$numericUpDown9.add_Leave({
    $timer9.Stop()
})
$form.Controls.Add($numericUpDown9)

$10gatulabel = New-Object System.Windows.Forms.label
$10gatulabel.Text = "10"+[char]0x6708+[char]0xFF1A+[char]0x00A5
$10gatulabel.Location = New-Object System.Drawing.Point(10,310)
$10gatulabel.Size = New-Object System.Drawing.Size(45, 20)
$form.Controls.Add($10gatulabel)

$numericUpDown10 = New-Object Windows.Forms.NumericUpDown
$numericUpDown10.Location = New-Object Drawing.Point(60,310)
$numericUpDown10.Size = New-Object Drawing.Size(400, 20)
$numericUpDown10.Minimum = 0
$numericUpDown10.Maximum = 100000000
$timer10 = New-Object System.Windows.Forms.Timer
$timer10.Interval = 100
$timer10.add_Tick({
    if ($numericUpDown10.Text -eq [string]::Empty) {
        $numericUpDown10.Text = $numericUpDown10.Minimum
    }
})
$numericUpDown10.add_Enter({
    $timer10.Start()
})
$numericUpDown10.add_Leave({
    $timer10.Stop()
})
$form.Controls.Add($numericUpDown10)

$11gatulabel = New-Object System.Windows.Forms.label
$11gatulabel.Text = "11"+[char]0x6708+[char]0xFF1A+[char]0x00A5
$11gatulabel.Location = New-Object System.Drawing.Point(10,340)
$11gatulabel.Size = New-Object System.Drawing.Size(45, 20)
$form.Controls.Add($11gatulabel)

$numericUpDown11 = New-Object Windows.Forms.NumericUpDown
$numericUpDown11.Location = New-Object Drawing.Point(60,340)
$numericUpDown11.Size = New-Object Drawing.Size(400, 20)
$numericUpDown11.Minimum = 0
$numericUpDown11.Maximum = 100000000
$timer11 = New-Object System.Windows.Forms.Timer
$timer11.Interval = 100
$timer11.add_Tick({
    if ($numericUpDown11.Text -eq [string]::Empty) {
        $numericUpDown11.Text = $numericUpDown11.Minimum
    }
})
$numericUpDown11.add_Enter({
    $timer11.Start()
})
$numericUpDown11.add_Leave({
    $timer11.Stop()
})
$form.Controls.Add($numericUpDown11)

$12gatulabel = New-Object System.Windows.Forms.label
$12gatulabel.Text = "12"+[char]0x6708+[char]0xFF1A+[char]0x00A5
$12gatulabel.Location = New-Object System.Drawing.Point(10,370)
$12gatulabel.Size = New-Object System.Drawing.Size(45, 20)
$form.Controls.Add($12gatulabel)

$numericUpDown12 = New-Object Windows.Forms.NumericUpDown
$numericUpDown12.Location = New-Object Drawing.Point(60,370)
$numericUpDown12.Size = New-Object Drawing.Size(400, 20)
$numericUpDown12.Minimum = 0
$numericUpDown12.Maximum = 100000000
$timer12 = New-Object System.Windows.Forms.Timer
$timer12.Interval = 100
$timer12.add_Tick({
    if ($numericUpDown12.Text -eq [string]::Empty) {
        $numericUpDown12.Text = $numericUpDown12.Minimum
    }
})
$numericUpDown12.add_Enter({
    $timer12.Start()
})
$numericUpDown12.add_Leave({
    $timer12.Stop()
})
$form.Controls.Add($numericUpDown12)

$WinterBonuslabel = New-Object System.Windows.Forms.label
$WinterBonuslabel.Text = [char]0x30DC+"-"+[char]0x30CA+[char]0x30B9+"2"+" "+[char]0x00A5
$WinterBonuslabel.Location = New-Object System.Drawing.Point(10,400)
$WinterBonuslabel.Size = New-Object System.Drawing.Size(60, 20)
$form.Controls.Add($WinterBonuslabel)

$numericUpDownWinterBonus = New-Object Windows.Forms.NumericUpDown
$numericUpDownWinterBonus.Location = New-Object Drawing.Point(80,400)
$numericUpDownWinterBonus.Size = New-Object Drawing.Size(400, 20)
$numericUpDownWinterBonus.Minimum = 0
$numericUpDownWinterBonus.Maximum = 100000000
$timerWinterBonus = New-Object System.Windows.Forms.Timer
$timerWinterBonus.Interval = 100
$timerWinterBonus.add_Tick({
    if ($numericUpDownWinterBonus.Text -eq [string]::Empty) {
        $numericUpDownWinterBonus.Text = $numericUpDownWinterBonus.Minimum
    }
})
$numericUpDownWinterBonus.add_Enter({
    $timerWinterBonus.Start()
})
$numericUpDownWinterBonus.add_Leave({
    $timerWinterBonus.Stop()
})
$form.Controls.Add($numericUpDownWinterBonus)

$goukei0label = New-Object System.Windows.Forms.label
$goukei0label.Text = [char]0x5408+[char]0x8A08+[char]0x5E74+[char]0x53CE+[char]0xFF1A+[char]0x00A5
$goukei0label.Location = New-Object System.Drawing.Point(10, 460)
$goukei0label.Size = New-Object System.Drawing.Size(80, 20)
$goukei0label.ForeColor = 'Red'
$form.Controls.Add($goukei0label)

$goukeilabel = New-Object System.Windows.Forms.label
$goukeilabel.Text = "-"
$goukeilabel.Location = New-Object System.Drawing.Point(120, 460)
$goukeilabel.Size = New-Object System.Drawing.Size(300, 20)
$goukeilabel.ForeColor = 'Red'
$form.Controls.Add($goukeilabel)

$button = New-Object System.Windows.Forms.Button
$button.Location = New-Object System.Drawing.Point(230, 490)
$button.Size = New-Object System.Drawing.Size(60, 30)
$button.Text = "copy"
$button.Add_Click({
[System.Windows.Forms.Clipboard]::SetText($goukeilabel.Text)
})
$form.Controls.Add($button)


$ValueChangedhandler = {
    $sum = [int]$numericUpDown1.Value + [int]$numericUpDown2.Value +[int]$numericUpDown3.Value+[int]$numericUpDown4.Value+[int]$numericUpDown5.Value+[int]$numericUpDown6.Value+[int]$numericUpDownSummerBonus.Value+[int]$numericUpDown7.Value+[int]$numericUpDown8.Value+[int]$numericUpDown9.Value+[int]$numericUpDown10.Value+[int]$numericUpDown11.Value+[int]$numericUpDown12.Value+[int]$numericUpDownWinterBonus.Value
    $goukeilabel.Text = "$sum"
}
$numericUpDown1.Add_ValueChanged($ValueChangedhandler)
$numericUpDown2.Add_ValueChanged($ValueChangedhandler)
$numericUpDown3.Add_ValueChanged($ValueChangedhandler)
$numericUpDown4.Add_ValueChanged($ValueChangedhandler)
$numericUpDown5.Add_ValueChanged($ValueChangedhandler)
$numericUpDown6.Add_ValueChanged($ValueChangedhandler)
$numericUpDownSummerBonus.Add_ValueChanged($ValueChangedhandler)
$numericUpDown7.Add_ValueChanged($ValueChangedhandler)
$numericUpDown8.Add_ValueChanged($ValueChangedhandler)
$numericUpDown9.Add_ValueChanged($ValueChangedhandler)
$numericUpDown10.Add_ValueChanged($ValueChangedhandler)
$numericUpDown11.Add_ValueChanged($ValueChangedhandler)
$numericUpDown12.Add_ValueChanged($ValueChangedhandler)
$numericUpDownWinterBonus.Add_ValueChanged($ValueChangedhandler)

$form.ShowDialog()
read-host