.class Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;
.super Ljava/lang/Object;
.source "FingerprintUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fingerprint/FingerprintUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->access$000(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/exsettings/fingerprint/FingerprintUiHelper;

    # getter for: Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/exsettings/fingerprint/FingerprintUiHelper;->access$100(Lcom/android/exsettings/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    return-void
.end method
