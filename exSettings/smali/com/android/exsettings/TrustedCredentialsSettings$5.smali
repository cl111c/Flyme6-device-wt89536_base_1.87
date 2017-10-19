.class Lcom/android/exsettings/TrustedCredentialsSettings$5;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5;->val$certDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 702
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 703
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->access$3200(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 704
    const v2, 0x1040013

    new-instance v3, Lcom/android/exsettings/TrustedCredentialsSettings$5$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/TrustedCredentialsSettings$5$1;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 712
    const v2, 0x1040009

    new-instance v3, Lcom/android/exsettings/TrustedCredentialsSettings$5$2;

    invoke-direct {v3, p0}, Lcom/android/exsettings/TrustedCredentialsSettings$5$2;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 718
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 719
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 720
    return-void
.end method
