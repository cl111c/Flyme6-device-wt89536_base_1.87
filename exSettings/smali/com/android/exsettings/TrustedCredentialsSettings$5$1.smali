.class Lcom/android/exsettings/TrustedCredentialsSettings$5$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/TrustedCredentialsSettings$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/TrustedCredentialsSettings$5;


# direct methods
.method constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings$5;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5$1;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 707
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;

    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5$1;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$5;

    iget-object v1, v1, Lcom/android/exsettings/TrustedCredentialsSettings$5;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5$1;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$5;

    iget-object v2, v2, Lcom/android/exsettings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Lcom/android/exsettings/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 708
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 709
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$5$1;->this$1:Lcom/android/exsettings/TrustedCredentialsSettings$5;

    iget-object v0, v0, Lcom/android/exsettings/TrustedCredentialsSettings$5;->val$certDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 710
    return-void
.end method
