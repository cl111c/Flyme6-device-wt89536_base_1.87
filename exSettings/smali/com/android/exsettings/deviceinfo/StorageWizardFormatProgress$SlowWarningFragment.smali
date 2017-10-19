.class public Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
.super Landroid/app/DialogFragment;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlowWarningFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 181
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;

    .line 185
    .local v4, "target":Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;
    # invokes: Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->getDiskDescription()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->access$300(Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "descrip":Ljava/lang/String;
    # invokes: Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->getGenericDiskDescription()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;->access$400(Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "genericDescip":Ljava/lang/String;
    const v5, 0x7f0c0460

    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 190
    const v5, 0x104000a

    new-instance v6, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;

    invoke-direct {v6, p0}, Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;-><init>(Lcom/android/exsettings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
