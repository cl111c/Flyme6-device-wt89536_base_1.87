.class public Lcom/android/exsettings/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/exsettings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 58
    .local v7, "intent":Landroid/content/Intent;
    const-string v2, "android.app.extra.TITLE"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "title":Ljava/lang/String;
    const-string v2, "android.app.extra.DESCRIPTION"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "details":Ljava/lang/String;
    new-instance v0, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 62
    .local v0, "helper":Lcom/android/exsettings/ChooseLockSettingsHelper;
    const/4 v2, 0x0

    const/4 v6, 0x1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    sget-object v1, Lcom/android/exsettings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v2, "No pattern, password or PIN set."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialActivity;->finish()V

    .line 68
    return-void
.end method
