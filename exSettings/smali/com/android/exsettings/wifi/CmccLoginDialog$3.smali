.class Lcom/android/exsettings/wifi/CmccLoginDialog$3;
.super Ljava/lang/Object;
.source "CmccLoginDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/CmccLoginDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/CmccLoginDialog;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$3;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$3;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$100(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0c38

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    return-void
.end method
