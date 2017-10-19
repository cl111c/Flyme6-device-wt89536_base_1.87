.class final Lcom/aspire/g3wlan/client/sdk/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    return-void
.end method

.method private b(Lcom/aspire/g3wlan/client/sdk/biz/g;)V
    .locals 7

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_5

    :cond_0
    move-object v0, v1

    :cond_1
    const-string v1, "wlanSsid"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v1, "wlanRssi"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "CMCC"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CMCC-EDU"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CMCC-WEB"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "wlanAcName"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wlanUserIp"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wlanAcIp"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "wlanNasid"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v1, "pref_wifi_info"

    invoke-static {v3}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/aspire/g3wlan/client/sdk/biz/g;)V
    .locals 11

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/aspire/g3wlan/client/sdk/biz/l;

    invoke-direct {v2}, Lcom/aspire/g3wlan/client/sdk/biz/l;-><init>()V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v3, "pref_wifi_info"

    invoke-static {v1, v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v4, "pref_login_info"

    invoke-static {v1, v4}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v5, "pref_logout_info"

    invoke-static {v1, v5}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v6, "pref_location_info"

    invoke-static {v1, v6}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    :cond_2
    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aspire/g3wlan/client/sdk/biz/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aspire/g3wlan/client/sdk/biz/o;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Mobile"

    invoke-virtual {v2, v10}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/aspire/g3wlan/client/sdk/biz/l;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/aspire/g3wlan/client/sdk/biz/l;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/aspire/g3wlan/client/sdk/biz/l;->e(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    invoke-static {}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->g(Ljava/lang/String;)V

    const-string v0, "ewalkAndroidSDK"

    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->h(Ljava/lang/String;)V

    const-string v0, "000"

    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->i(Ljava/lang/String;)V

    const-string v0, "android0000000001"

    :try_start_0
    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v7, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "EWALK_CHANNELID"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->j(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "pref_wifi_info"

    invoke-static {v0, v3}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "wlanSsid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "wlanSsid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->k(Ljava/lang/String;)V

    const-string v0, "wlanRssi"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "wlanRssi"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->l(Ljava/lang/String;)V

    const-string v0, "wlanAcName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "wlanAcName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->m(Ljava/lang/String;)V

    const-string v0, "wlanUserIp"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "wlanUserIp"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->n(Ljava/lang/String;)V

    const-string v0, "wlanAcIp"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "wlanAcIp"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->o(Ljava/lang/String;)V

    const-string v0, "wlanNasid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "wlanNasid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->p(Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "pref_login_info"

    invoke-static {v0, v4}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "mobileNo"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "mobileNo"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->q(Ljava/lang/String;)V

    const-string v0, "imsi"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "imsi"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->r(Ljava/lang/String;)V

    const-string v0, "iccid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "iccid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->s(Ljava/lang/String;)V

    const-string v0, "loginTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "loginTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->t(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aspire/g3wlan/client/sdk/biz/l;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->u(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->v(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->w(Ljava/lang/String;)V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "pref_login_info"

    invoke-static {v0, v5}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "logoutTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, "logoutTime"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->u(Ljava/lang/String;)V

    const-string v0, "resUsage"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v0, "resUsage"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->v(Ljava/lang/String;)V

    const-string v0, "totalFlow"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v0, "totalFlow"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->w(Ljava/lang/String;)V

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "pref_location_info"

    invoke-static {v0, v6}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "longitude"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v0, "longitude"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->x(Ljava/lang/String;)V

    const-string v0, "latitude"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, "latitude"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->y(Ljava/lang/String;)V

    const-string v0, "cid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v0, "cid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->z(Ljava/lang/String;)V

    const-string v0, "lac"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v0, "lac"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->A(Ljava/lang/String;)V

    const-string v0, "lfc"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v0, "lfc"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->B(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lcom/aspire/g3wlan/client/sdk/biz/m;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/biz/m;-><init>()V

    new-instance v1, Lcom/aspire/g3wlan/client/sdk/o;

    invoke-direct {v1, p0}, Lcom/aspire/g3wlan/client/sdk/o;-><init>(Lcom/aspire/g3wlan/client/sdk/n;)V

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/m;->a(Lcom/aspire/g3wlan/client/sdk/biz/f;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/aspire/g3wlan/client/sdk/biz/j;->a(Landroid/content/Context;Lcom/aspire/g3wlan/client/sdk/biz/g;)Lcom/aspire/g3wlan/client/sdk/biz/j;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/m;->a(Lcom/aspire/g3wlan/client/sdk/biz/j;Lcom/aspire/g3wlan/client/sdk/biz/l;)V

    :cond_7
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v1, "pref_logined_ssid"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/aspire/g3wlan/client/sdk/n;->b(Lcom/aspire/g3wlan/client/sdk/biz/g;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->b()Ljava/lang/String;

    move-result-object v2

    const-string v1, "CMCC-AUTO"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string v4, "CMCC-AUTO"

    invoke-static {v1, v4}, Lcom/aspire/g3wlan/client/sdk/p;->a(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/p;->a(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    const-string v2, "\""

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_13
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "mobileNo"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imsi"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iccid"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "loginTime"

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1, v4}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/aspire/g3wlan/client/sdk/biz/o;->d()J

    move-result-wide v4

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v6, "pref_login_info"

    invoke-static {v2}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v6, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v3, "pref_logout_info"

    const-string v6, ""

    invoke-static {v2, v3, v6}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v3, "pref_login_time_long"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v1, "pref_netcount_start_long"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "lfc"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "longitude"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "latitude"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lac"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cid"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v2, "pref_location_info"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    const-string v0, ""

    goto/16 :goto_1

    :cond_9
    const-string v0, ""

    goto/16 :goto_2

    :cond_a
    const-string v0, ""

    goto/16 :goto_3

    :cond_b
    const-string v0, ""

    goto/16 :goto_4

    :cond_c
    const-string v0, ""

    goto/16 :goto_5

    :cond_d
    const-string v0, ""

    goto/16 :goto_6

    :cond_e
    const-string v0, ""

    goto/16 :goto_7

    :cond_f
    const-string v0, ""

    goto/16 :goto_8

    :cond_10
    const-string v0, ""

    goto/16 :goto_9

    :cond_11
    const-string v0, ""

    goto/16 :goto_a

    :cond_12
    const-string v0, ""

    goto/16 :goto_b

    :cond_13
    const-string v0, ""

    goto/16 :goto_c

    :cond_14
    const-string v0, ""

    goto/16 :goto_d

    :cond_15
    const-string v0, ""

    goto/16 :goto_e

    :cond_16
    const-string v0, ""

    goto/16 :goto_f

    :cond_17
    const-string v0, ""

    goto/16 :goto_10

    :cond_18
    const-string v0, ""

    goto/16 :goto_11

    :cond_19
    const-string v0, ""

    goto/16 :goto_12

    :cond_1a
    move-object v1, v2

    goto/16 :goto_13
.end method

.method public final a(Ljava/lang/String;)V
    .locals 12

    const-wide/16 v10, 0x0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v1, "pref_logined_ssid"

    invoke-static {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v2, "pref_logout_info"

    invoke-static {v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v2, "pref_login_time_long"

    invoke-static {v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v3, "pref_netcount_start_long"

    invoke-static {v2, v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->b(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v1, "logoutTime"

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6, v7, v8}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v1, v4, v10

    if-eqz v1, :cond_1

    sub-long v8, v6, v4

    cmp-long v1, v8, v10

    if-lez v1, :cond_1

    const-string v1, "resUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    sub-long v4, v6, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/aspire/g3wlan/client/sdk/biz/o;->d()J

    move-result-wide v4

    sub-long v6, v4, v2

    cmp-long v1, v6, v10

    if-lez v1, :cond_2

    const-string v1, "totalFlow"

    new-instance v6, Ljava/lang/StringBuilder;

    sub-long v2, v4, v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v2, "pref_logout_info"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v1, "pref_login_time_long"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/n;->a:Landroid/content/Context;

    const-string v1, "pref_netcount_start_long"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
