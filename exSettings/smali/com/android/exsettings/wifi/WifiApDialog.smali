.class public Lcom/android/exsettings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mBandIndex:I

.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 59
    iput v0, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 61
    iput v0, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mBandIndex:I

    .line 72
    iput-object p2, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    iput-object p3, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 74
    if-eqz p3, :cond_0

    .line 75
    invoke-static {p3}, Lcom/android/exsettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 77
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 78
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/WifiApDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiApDialog;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mBandIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/exsettings/wifi/WifiApDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiApDialog;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mBandIndex:I

    return p1
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f120273

    .line 257
    iget v0, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 217
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "mSsidString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_3

    .line 222
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApDialog;->validate()V

    .line 243
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 239
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 98
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 100
    iget v2, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mBandIndex:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 102
    iget v2, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 104
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 109
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 110
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 233
    return-void

    .line 229
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x1090008

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 121
    const/4 v4, 0x1

    .line 122
    .local v4, "mInit":Z
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04013a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 123
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f120272

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 124
    .local v5, "mSecurity":Landroid/widget/Spinner;
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f120275

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 126
    .local v3, "mChannel":Landroid/widget/Spinner;
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    .local v1, "context":Landroid/content/Context;
    const v6, 0x7f0c032f

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/WifiApDialog;->setTitle(I)V

    .line 132
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f120134

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f120271

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 134
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f12025c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 137
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "countryCode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v2, :cond_4

    .line 140
    :cond_0
    const-string v7, "WifiApDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Device do not support 5GHz "

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_3

    const-string v6, " NO country code"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " forbid 5GHz"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0a001a

    invoke-static {v6, v7, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 144
    .local v0, "channelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v9, v6, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 150
    :goto_2
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 152
    const/4 v6, -0x1

    const v7, 0x7f0c02e0

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/exsettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 153
    const/4 v6, -0x2

    const v7, 0x7f0c02e2

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/exsettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_1

    .line 157
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v6, :cond_5

    .line 159
    iput v9, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mBandIndex:I

    .line 164
    :goto_3
    iget v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 165
    iget v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v6, v10, :cond_1

    .line 166
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_1
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    new-instance v6, Lcom/android/exsettings/wifi/WifiApDialog$1;

    invoke-direct {v6, p0, v3}, Lcom/android/exsettings/wifi/WifiApDialog$1;-><init>(Lcom/android/exsettings/wifi/WifiApDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 196
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f120274

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 201
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 203
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 204
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApDialog;->validate()V

    .line 205
    return-void

    .line 140
    .end local v0    # "channelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_2
    const-string v6, ""

    goto/16 :goto_0

    :cond_3
    const-string v6, ""

    goto/16 :goto_1

    .line 146
    :cond_4
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0019

    invoke-static {v6, v7, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .restart local v0    # "channelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    goto/16 :goto_2

    .line 161
    :cond_5
    iput v10, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mBandIndex:I

    goto :goto_3
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 248
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 249
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApDialog;->validate()V

    .line 250
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 209
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f120274

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 214
    return-void

    .line 209
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 236
    return-void
.end method
