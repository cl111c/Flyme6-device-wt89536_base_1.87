.class final enum Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exsettings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mExpandableList:I

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 83
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    const-string v3, "system"

    const v4, 0x7f0c090c

    const v5, 0x7f12021c

    const v6, 0x7f12021d

    const v7, 0x7f12021e

    const v8, 0x7f12021f

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .line 90
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    const-string v1, "USER"

    const/4 v2, 0x1

    const-string v3, "user"

    const v4, 0x7f0c090d

    const v5, 0x7f120220

    const v6, 0x7f120221

    const v7, 0x7f120222

    const v8, 0x7f120223

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "label"    # I
    .param p5, "view"    # I
    .param p6, "progress"    # I
    .param p7, "list"    # I
    .param p8, "expandableList"    # I
    .param p9, "withSwitch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput-object p3, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 109
    iput p4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 110
    iput p5, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mView:I

    .line 111
    iput p6, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 112
    iput p7, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mList:I

    .line 113
    iput p8, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    .line 114
    iput-boolean p9, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    .line 115
    return-void
.end method

.method static synthetic access$1800(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Landroid/security/IKeyChainService;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;ZLcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/android/exsettings/TrustedCredentialsSettings$6;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 132
    :cond_0
    :pswitch_1
    return v0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/ParcelableString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$6;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 149
    sget-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$6;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :pswitch_0
    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const v0, 0x7f0c0911

    .line 156
    :goto_0
    return v0

    .line 154
    :cond_0
    const v0, 0x7f0c0912

    goto :goto_0

    .line 156
    :pswitch_1
    const v0, 0x7f0c0913

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 137
    sget-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$6;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :pswitch_0
    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const v0, 0x7f0c090f

    .line 144
    :goto_0
    return v0

    .line 142
    :cond_0
    const v0, 0x7f0c090e

    goto :goto_0

    .line 144
    :pswitch_1
    const v0, 0x7f0c0910

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "ok"    # Z
    .param p2, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 161
    if-eqz p1, :cond_2

    .line 162
    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    if-eqz v0, :cond_1

    .line 163
    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$002(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Z)Z

    .line 167
    :goto_1
    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->notifyDataSetChanged()V

    .line 172
    :goto_2
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_1
    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->remove(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    goto :goto_1

    .line 170
    :cond_2
    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->load()V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
