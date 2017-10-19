.class Lcom/android/exsettings/wfd/WifiDisplaySettings$13;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/exsettings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->access$1000(Lcom/android/exsettings/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 600
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/exsettings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1, v2}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->access$1002(Lcom/android/exsettings/wfd/WifiDisplaySettings;I)I

    .line 601
    iget-object v1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/exsettings/wfd/WifiDisplaySettings;->update(I)V
    invoke-static {v1, v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->access$1100(Lcom/android/exsettings/wfd/WifiDisplaySettings;I)V

    .line 602
    return-void
.end method
