.class Lcom/android/exsettings/wifi/AccessPointInfo$2;
.super Ljava/lang/Object;
.source "AccessPointInfo.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/AccessPointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/AccessPointInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointInfo$2;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo$2;->this$0:Lcom/android/exsettings/wifi/AccessPointInfo;

    const v1, 0x7f0c02e1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 316
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method
