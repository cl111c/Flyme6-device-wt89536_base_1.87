.class Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;
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
    .line 595
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;

    # invokes: Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->onDeleteClick(Landroid/content/DialogInterface;)V
    invoke-static {v0, p1}, Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;->access$600(Lcom/android/exsettings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDeleteDialog;Landroid/content/DialogInterface;)V

    .line 599
    return-void
.end method
