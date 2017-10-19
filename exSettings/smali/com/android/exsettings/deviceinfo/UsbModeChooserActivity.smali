.class public Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# static fields
.field public static final DEFAULT_MODES:[I


# instance fields
.field private mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)Lcom/android/exsettings/deviceinfo/UsbBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

    return-object v0
.end method

.method private static getSummary(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 172
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 160
    :pswitch_1
    const v0, 0x7f0c0b20

    goto :goto_0

    .line 162
    :pswitch_2
    const v0, 0x7f0c0b22

    goto :goto_0

    .line 164
    :pswitch_3
    const v0, 0x7f0c0b24

    goto :goto_0

    .line 166
    :pswitch_4
    const v0, 0x7f0c0b26

    goto :goto_0

    .line 168
    :pswitch_5
    const v0, 0x7f0c0b28

    goto :goto_0

    .line 170
    :pswitch_6
    const v0, 0x7f0c0b2b

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getTitle(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 176
    packed-switch p0, :pswitch_data_0

    .line 190
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 178
    :pswitch_1
    const v0, 0x7f0c0b1f

    goto :goto_0

    .line 180
    :pswitch_2
    const v0, 0x7f0c0b21

    goto :goto_0

    .line 182
    :pswitch_3
    const v0, 0x7f0c0b23

    goto :goto_0

    .line 184
    :pswitch_4
    const v0, 0x7f0c0b25

    goto :goto_0

    .line 186
    :pswitch_5
    const v0, 0x7f0c0b27

    goto :goto_0

    .line 188
    :pswitch_6
    const v0, 0x7f0c0b2a

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "selected"    # Z
    .param p3, "container"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v5, 0x0

    .line 129
    const-string v3, "persist.sys.sim.activate"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    .local v0, "isSimCardInserted":Z
    const-string v3, "persist.sys.usb.security"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 134
    .local v1, "isUsbSecurityEnable":Z
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400d8

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "v":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 137
    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 139
    new-instance v3, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v2

    .line 149
    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 150
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v2, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    :cond_0
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 89
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0b29

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f04012a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v5, p0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0140

    new-instance v6, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v6, p0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    .line 104
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 106
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v5, 0x7f1200aa

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/android/exsettings/deviceinfo/UsbBackend;

    invoke-direct {v4, p0}, Lcom/android/exsettings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

    .line 109
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

    invoke-virtual {v4}, Lcom/android/exsettings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v1

    .line 110
    .local v1, "current":I
    const/16 v2, 0x8

    .line 111
    .local v2, "dataTetherMode":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 112
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/exsettings/deviceinfo/UsbBackend;

    sget-object v5, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/exsettings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v3

    if-eq v2, v4, :cond_1

    .line 116
    :cond_0
    sget-object v4, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v5, v4, v3

    sget-object v4, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v3

    if-ne v1, v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v5, v4, v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;)V

    .line 111
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 119
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    return-void
.end method
