.class Lcom/android/exsettings/ResetNetwork$1;
.super Ljava/lang/Object;
.source "ResetNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ResetNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ResetNetwork;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ResetNetwork;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/exsettings/ResetNetwork$1;->this$0:Lcom/android/exsettings/ResetNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/exsettings/ResetNetwork$1;->this$0:Lcom/android/exsettings/ResetNetwork;

    const/16 v1, 0x37

    # invokes: Lcom/android/exsettings/ResetNetwork;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/exsettings/ResetNetwork;->access$000(Lcom/android/exsettings/ResetNetwork;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/ResetNetwork$1;->this$0:Lcom/android/exsettings/ResetNetwork;

    # invokes: Lcom/android/exsettings/ResetNetwork;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/exsettings/ResetNetwork;->access$100(Lcom/android/exsettings/ResetNetwork;)V

    .line 126
    :cond_0
    return-void
.end method
