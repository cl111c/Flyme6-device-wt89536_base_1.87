.class public Lcom/android/exsettings/ConfirmLockPattern;
.super Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ConfirmLockPattern$1;,
        Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/exsettings/ConfirmLockPattern$Stage;,
        Lcom/android/exsettings/ConfirmLockPattern$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;-><init>()V

    .line 86
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 76
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcom/android/exsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method