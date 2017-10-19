.class Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog$1;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;

    # invokes: Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;->handleWriteNfcEvent(Landroid/nfc/Tag;)V
    invoke-static {v0, p1}, Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;->access$000(Lcom/android/exsettings/wifi/WriteWifiConfigToNfcDialog;Landroid/nfc/Tag;)V

    .line 158
    return-void
.end method
