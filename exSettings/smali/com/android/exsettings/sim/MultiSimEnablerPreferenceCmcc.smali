.class public Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
.super Landroid/preference/Preference;
.source "MultiSimEnablerPreferenceCmcc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;,
        Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;
    }
.end annotation


# static fields
.field private static mProgressDialog:Landroid/app/ProgressDialog;

.field private static mSyncLock:Ljava/lang/Object;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCheckSub:I

.field private mCmdInProgress:Z

.field private final mContext:Landroid/content/Context;

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mErrorToast:Landroid/widget/Toast;

.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

.field private mHandler:Landroid/os/Handler;

.field private mNameEditDialog:Landroid/app/AlertDialog;

.field private mNameEditText:Landroid/widget/EditText;

.field private mNameSub:I

.field private mNumPhones:I

.field private mParentHandler:Landroid/os/Handler;

.field private mRequest:Z

.field private mSimButton:[Landroid/widget/ImageView;

.field private final mSimButtonId:[I

.field private mSimName:[Landroid/widget/EditText;

.field private mSimNameDivider:[Landroid/view/View;

.field private final mSimNameDividerId:[I

.field private final mSimNameId:[I

.field private mSimNumber:[Landroid/widget/TextView;

.field private mSimNumberDivider:[Landroid/view/View;

.field private final mSimNumberDividerId:[I

.field private final mSimNumberId:[I

.field private mSimState:[Landroid/widget/TextView;

.field private final mSimStateId:[I

.field private mSimStateName:[Landroid/widget/TextView;

.field private final mSimStateNameId:[I

.field private mUiccProvisionStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSyncLock:Ljava/lang/Object;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const-string v0, "MultiSimEnablerPreferenceCmcc"

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->TAG:Ljava/lang/String;

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimStateId:[I

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimStateNameId:[I

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNameId:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumberId:[I

    .line 78
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButtonId:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNameDividerId:[I

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumberDividerId:[I

    .line 81
    iput-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNameEditText:Landroid/widget/EditText;

    .line 82
    iput-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNameEditDialog:Landroid/app/AlertDialog;

    .line 83
    iput v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNameSub:I

    .line 84
    iput v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    .line 85
    iput-boolean v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mRequest:Z

    .line 88
    iput-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mParentHandler:Landroid/os/Handler;

    .line 92
    iput-boolean v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCmdInProgress:Z

    .line 118
    new-instance v0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;-><init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mHandler:Landroid/os/Handler;

    .line 674
    new-instance v0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$4;-><init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 687
    new-instance v0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$5;-><init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 167
    iput-object p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    .line 168
    return-void

    .line 74
    :array_0
    .array-data 4
        0x7f120069
        0x7f120071
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x7f12006b
        0x7f120073
    .end array-data

    .line 76
    :array_2
    .array-data 4
        0x7f12006e
        0x7f120076
    .end array-data

    .line 77
    :array_3
    .array-data 4
        0x7f12006c
        0x7f120074
    .end array-data

    .line 78
    :array_4
    .array-data 4
        0x7f12006a
        0x7f120072
    .end array-data

    .line 79
    :array_5
    .array-data 4
        0x7f12006f
        0x7f120077
    .end array-data

    .line 80
    :array_6
    .array-data 4
        0x7f12006d
        0x7f120075
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mRequest:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Lcom/android/internal/telephony/IExtTelephony;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->processSetUiccDone(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->sendUiccProvisioningRequest()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mErrorToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mErrorToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showAlertDialog(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$500()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->removeCursor()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->saveSimName()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNameDivider:[Landroid/view/View;

    return-object v0
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 697
    if-eqz p1, :cond_0

    .line 698
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 699
    const/4 p1, 0x0

    .line 701
    :cond_0
    return-void
.end method

.method private getProvisionStatus(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mUiccProvisionStatus:[I

    aget v0, v0, p1

    return v0
.end method

.method private getUiccProvisionStatus()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 311
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v1, v2, :cond_0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mUiccProvisionStatus:[I

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mUiccProvisionStatus:[I

    aput v4, v2, v1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get pref, slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 319
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 320
    .local v0, "ex":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mUiccProvisionStatus:[I

    aput v4, v2, v1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get pref, slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    return-void
.end method

.method private declared-synchronized handleUserRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 575
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    const-string v2, "APM is on, EXIT!"

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    .line 578
    const/4 v2, 0x2

    const v3, 0x7f0c0b70

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showAlertDialog(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :goto_0
    monitor-exit p0

    return-void

    .line 581
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v0, v2, :cond_2

    .line 582
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 584
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call state for phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not idle, EXIT!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    .line 587
    const/4 v2, 0x2

    const v3, 0x7f0c0b71

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showAlertDialog(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 575
    .end local v0    # "i":I
    .end local v1    # "subId":[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 581
    .restart local v0    # "i":I
    .restart local v1    # "subId":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 592
    .end local v1    # "subId":[I
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mRequest:Z

    if-nez v2, :cond_4

    .line 593
    invoke-virtual {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getNumOfSubsProvisioned()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 594
    const-string v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    .line 595
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showAlertDialog(II)V

    goto :goto_0

    .line 597
    :cond_3
    const-string v2, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    .line 604
    const/4 v2, 0x2

    const v3, 0x7f0c0d34

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showAlertDialogEx(II)V

    goto :goto_0

    .line 610
    :cond_4
    const-string v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    .line 611
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->sendUiccProvisioningRequest()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private hasSimCard(I)Z
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 410
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 555
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentSubValid(I)Z
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, "isSubValid":Z
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->hasSimCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/exsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 799
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 800
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getProvisionStatus(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 803
    const/4 v0, 0x1

    .line 807
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return v0
.end method

.method private isValidContext()Z
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 784
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    :cond_0
    const/4 v1, 0x0

    .line 787
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method private processSetUiccDone(II)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "newProvisionedState"    # I

    .prologue
    const/16 v3, 0x7d0

    .line 560
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mParentHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->sendMessage(ILandroid/os/Handler;I)V

    .line 561
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mHandler:Landroid/os/Handler;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->sendMessage(ILandroid/os/Handler;III)V

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCmdInProgress:Z

    .line 563
    return-void
.end method

.method private removeCursor()V
    .locals 2

    .prologue
    .line 889
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v0, v1, :cond_2

    .line 890
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 889
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 893
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    .line 898
    :cond_2
    return-void
.end method

.method private saveSimName()V
    .locals 8

    .prologue
    .line 811
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v0, v2, :cond_2

    .line 812
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 811
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 818
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/exsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 819
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 820
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    const-wide/16 v6, 0x2

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    goto :goto_1

    .line 825
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    return-void
.end method

.method private saveSimNameEx()V
    .locals 8

    .prologue
    .line 903
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v0, v2, :cond_5

    .line 904
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 903
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 907
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/exsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 911
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 912
    const-string v2, "CARD 1"

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CARD 2"

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v2, "CARD 1"

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CARD 2"

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    const-wide/16 v6, 0x2

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    goto/16 :goto_1

    .line 923
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_5
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 769
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 771
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;III)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I

    .prologue
    .line 774
    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 775
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 776
    return-void
.end method

.method private sendUiccProvisioningRequest()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mParentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 632
    :cond_0
    new-instance v0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;-><init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showAlertDialog(II)V
    .locals 9
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const v6, 0x104000a

    .line 705
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->isValidContext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 742
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    invoke-static {v4, v5}, Lcom/android/exsettings/Utils;->getSimNameFromSlotIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "title":Ljava/lang/String;
    sget-object v4, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->dismissDialog(Landroid/app/Dialog;)V

    .line 712
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 715
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 739
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 740
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 741
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 717
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :pswitch_0
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0b6d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 718
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 719
    const v4, 0x1040009

    iget-object v5, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 720
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 723
    :pswitch_1
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 724
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 725
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 726
    iput v7, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    goto :goto_1

    .line 729
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mRequest:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0b75

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "msg":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 732
    const/4 v4, 0x0

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 733
    iput v7, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    goto :goto_1

    .line 729
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0b77

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showAlertDialogEx(II)V
    .locals 9
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const v6, 0x104000a

    .line 846
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->isValidContext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 884
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    invoke-static {v4, v5}, Lcom/android/exsettings/Utils;->getSimNameFromSlotIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0d2f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 852
    sget-object v4, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->dismissDialog(Landroid/app/Dialog;)V

    .line 854
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 857
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 881
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 882
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 883
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 859
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :pswitch_0
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0b6d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 860
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 861
    const v4, 0x1040009

    iget-object v5, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 862
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 865
    :pswitch_1
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 866
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 867
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 868
    iput v7, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    goto :goto_1

    .line 871
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mRequest:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0b75

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "msg":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 874
    const/4 v4, 0x0

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 875
    iput v7, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    goto :goto_1

    .line 871
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0b77

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 745
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    invoke-static {v2, v3}, Lcom/android/exsettings/Utils;->getSimNameFromSlotIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mRequest:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0c0b73

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->dismissDialog(Landroid/app/Dialog;)V

    .line 750
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->isValidContext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 752
    sget-object v2, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 753
    sget-object v2, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 754
    sget-object v2, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 755
    sget-object v2, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 756
    sget-object v2, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 757
    sget-object v2, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 759
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7530

    invoke-direct {p0, v2, v3, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->sendMessage(ILandroid/os/Handler;I)V

    .line 761
    :cond_0
    return-void

    .line 747
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0c0b74

    goto :goto_0
.end method

.method private updateSimImage()V
    .locals 10

    .prologue
    const v9, 0x7f020197

    const/4 v8, 0x1

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v0, v2, :cond_0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 480
    :cond_0
    return-void

    .line 449
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->hasSimCard(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020198

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimStateName:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0d31

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const v3, -0x60000001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 444
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/exsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 459
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_4

    .line 460
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getProvisionStatus(I)I

    move-result v2

    if-ne v2, v8, :cond_3

    .line 461
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020195

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    :goto_2
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 473
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimStateName:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v4, 0x7f0c09d0

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 463
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 466
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getProvisionStatus(I)I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 467
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020196

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 469
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private updateSimName()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v0, v2, :cond_0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 510
    :cond_0
    return-void

    .line 488
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->hasSimCard(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 489
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 490
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 506
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 507
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 483
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/exsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 494
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_2

    .line 495
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getProvisionStatus(I)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 496
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 497
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const v3, -0xc3c3c4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 502
    :goto_2
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 499
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 500
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const v3, -0x60c3c3c4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_2
.end method

.method private updateSimNumber()V
    .locals 8

    .prologue
    const v7, 0x7f0c0d26

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v1, v3, :cond_0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 514
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 552
    :cond_0
    return-void

    .line 518
    :cond_1
    const/4 v0, 0x0

    .line 519
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->hasSimCard(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 520
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 522
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumberDivider:[Landroid/view/View;

    aget-object v3, v3, v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const v4, -0x464647

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 550
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/exsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 526
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_2

    .line 527
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getProvisionStatus(I)I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 528
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 529
    if-nez v1, :cond_6

    .line 530
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const v4, -0xff5002

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 539
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 531
    :cond_6
    if-ne v1, v6, :cond_5

    .line 532
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const v4, -0x713ce2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 535
    :cond_7
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 536
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const v4, -0x60c3c3c4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 541
    :cond_8
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateSimState()V
    .locals 4

    .prologue
    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v0, v2, :cond_0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimState:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 441
    :cond_0
    return-void

    .line 428
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->hasSimCard(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 429
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimState:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const v3, 0x7f0c0d32

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 423
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/exsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 432
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_2

    .line 433
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getProvisionStatus(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 434
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimState:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const v3, 0x7f0c0b69

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 436
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimState:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const v3, 0x7f0c0b6a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 764
    sget-object v0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->dismissDialog(Landroid/app/Dialog;)V

    .line 765
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->saveSimNameEx()V

    .line 766
    return-void
.end method

.method public getNumOfSubsProvisioned()I
    .locals 6

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "activeSubInfoCount":I
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 619
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 620
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 621
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 295
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 328
    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 402
    :cond_0
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v0, v2, :cond_0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_2

    .line 390
    iput v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    .line 391
    iget-object v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/exsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 392
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_2

    .line 393
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getProvisionStatus(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 394
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mRequest:Z

    .line 398
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->handleUserRequest()V

    .line 332
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .restart local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    iput-boolean v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mRequest:Z

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 180
    const-string v3, "onCreateView"

    invoke-direct {p0, v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 183
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040040

    invoke-virtual {v1, v3, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 184
    .local v2, "view":Landroid/view/View;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    .line 185
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    .line 186
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimState:[Landroid/widget/TextView;

    .line 187
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimStateName:[Landroid/widget/TextView;

    .line 188
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    new-array v3, v3, [Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    .line 189
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    .line 190
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNameDivider:[Landroid/view/View;

    .line 191
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumberDivider:[Landroid/view/View;

    .line 192
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mUiccProvisionStatus:[I

    .line 193
    const-string v3, "extphone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNumPhones:I

    if-ge v0, v3, :cond_3

    .line 195
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButtonId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 196
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimState:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimStateId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v0

    .line 197
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimStateName:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimStateNameId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v0

    .line 198
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNameId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v4, v0

    .line 199
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    .line 200
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 201
    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumber:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumberId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v0

    .line 202
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNameDivider:[Landroid/view/View;

    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNameDividerId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    .line 203
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumberDivider:[Landroid/view/View;

    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimNumberDividerId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    .line 204
    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->isCurrentSubValid(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iput v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNameSub:I

    .line 206
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 208
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 211
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 214
    if-nez v0, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-instance v4, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$2;

    invoke-direct {v4, p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$2;-><init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;

    const/16 v6, 0xc

    invoke-direct {v5, p0, v6}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$LengthFilter;-><init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;I)V

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 194
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 233
    :cond_2
    if-ne v0, v7, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mSimName:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-instance v4, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$3;

    invoke-direct {v4, p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$3;-><init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 258
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->resume()V

    .line 260
    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 567
    iput-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNameEditText:Landroid/widget/EditText;

    .line 568
    iput-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNameEditDialog:Landroid/app/AlertDialog;

    .line 569
    iput v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mNameSub:I

    .line 571
    iput v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I

    .line 572
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 830
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 831
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 832
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0da0

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 833
    const/4 v0, 0x1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 836
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 406
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 407
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 414
    const-string v0, "resume"

    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->getUiccProvisionStatus()V

    .line 416
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->updateSimState()V

    .line 417
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->updateSimImage()V

    .line 418
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->updateSimName()V

    .line 419
    invoke-direct {p0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->updateSimNumber()V

    .line 420
    return-void
.end method

.method public setParentHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "parent"    # Landroid/os/Handler;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mParentHandler:Landroid/os/Handler;

    .line 780
    return-void
.end method
