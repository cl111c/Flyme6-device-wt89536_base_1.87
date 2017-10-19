.class Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$4;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreferenceCmcc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$4;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, -0x1

    .line 677
    if-ne p2, v1, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$4;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->sendUiccProvisioningRequest()V
    invoke-static {v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1600(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$4;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # setter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I
    invoke-static {v0, v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$002(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;I)I

    goto :goto_0

    .line 681
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$4;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # setter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I
    invoke-static {v0, v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$002(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;I)I

    goto :goto_0
.end method
