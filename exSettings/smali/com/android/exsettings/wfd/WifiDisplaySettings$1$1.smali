.class Lcom/android/exsettings/wfd/WifiDisplaySettings$1$1;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wfd/WifiDisplaySettings$1;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/wfd/WifiDisplaySettings$1;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wfd/WifiDisplaySettings$1;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$1$1;->this$1:Lcom/android/exsettings/wfd/WifiDisplaySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/exsettings/wfd/WifiDisplaySettings$1$1;->this$1:Lcom/android/exsettings/wfd/WifiDisplaySettings$1;

    iget-object v0, v0, Lcom/android/exsettings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/exsettings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/exsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/exsettings/wfd/WifiDisplaySettings;->access$000(Lcom/android/exsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->pauseWifiDisplay()V

    .line 348
    return-void
.end method
