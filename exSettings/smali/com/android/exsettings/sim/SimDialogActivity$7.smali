.class Lcom/android/exsettings/sim/SimDialogActivity$7;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/sim/SimDialogActivity;->displayDdsAlertIfNeeded(Landroid/content/Context;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimDialogActivity;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimDialogActivity;I)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/exsettings/sim/SimDialogActivity$7;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/exsettings/sim/SimDialogActivity$7;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 498
    # getter for: Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/exsettings/sim/SimDialogActivity;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelled switch DDS to subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/sim/SimDialogActivity$7;->val$subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 500
    iget-object v0, p0, Lcom/android/exsettings/sim/SimDialogActivity$7;->this$0:Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/SimDialogActivity;->finish()V

    .line 501
    return-void
.end method
