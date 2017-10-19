.class Lcom/android/exsettings/RadioInfo$18;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/exsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/exsettings/RadioInfo$18;->this$0:Lcom/android/exsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$18;->this$0:Lcom/android/exsettings/RadioInfo;

    # getter for: Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$2000(Lcom/android/exsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$18;->this$0:Lcom/android/exsettings/RadioInfo;

    # getter for: Lcom/android/exsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$2000(Lcom/android/exsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1094
    iget-object v0, p0, Lcom/android/exsettings/RadioInfo$18;->this$0:Lcom/android/exsettings/RadioInfo;

    # invokes: Lcom/android/exsettings/RadioInfo;->updateDnsCheckState()V
    invoke-static {v0}, Lcom/android/exsettings/RadioInfo;->access$4400(Lcom/android/exsettings/RadioInfo;)V

    .line 1095
    return-void

    .line 1093
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
