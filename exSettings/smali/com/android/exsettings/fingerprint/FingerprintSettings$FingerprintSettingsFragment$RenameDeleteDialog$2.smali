.class Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;->this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 574
    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;->this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mDialogTextField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->access$700(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "newName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;->this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v3}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->access$800(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 577
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 579
    const-string v3, "FingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;->this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-virtual {v3}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xfe

    iget-object v5, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;->this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v5}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->access$800(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 584
    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;->this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-virtual {v3}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 587
    .local v2, "parent":Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    iget-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$2;->this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v3}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->access$800(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    # invokes: Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$900(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V

    .line 590
    .end local v2    # "parent":Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 591
    return-void
.end method
