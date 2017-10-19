.class Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$5;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreferenceCmcc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 687
    iput-object p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$5;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$5;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->resume()V

    .line 691
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$5;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    const/4 v1, -0x1

    # setter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I
    invoke-static {v0, v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$002(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;I)I

    .line 692
    return-void
.end method
