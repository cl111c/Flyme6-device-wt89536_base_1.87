.class Landroid/telephony/PhoneNumberUtils$Prefixinfo;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Prefixinfo"
.end annotation


# instance fields
.field LeftChar:Ljava/lang/String;

.field isAreaCodePref:Z

.field isCountryPref:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberUtils$Prefixinfo;->isCountryPref:Z

    .line 649
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberUtils$Prefixinfo;->isAreaCodePref:Z

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$Prefixinfo;->LeftChar:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/PhoneNumberUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telephony/PhoneNumberUtils$1;

    .prologue
    .line 647
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils$Prefixinfo;-><init>()V

    return-void
.end method
