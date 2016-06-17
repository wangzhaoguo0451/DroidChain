.class public Lcom/wandoujia/p4/pay/PayImpl;
.super Ljava/lang/Object;
.source "PayImpl.java"


# static fields
.field public static final ALIPAY_FAST_CALLBACK_URL:Ljava/lang/String; = null

.field private static final EXCEPTION_INVALID_ORDER:Ljava/lang/String; = "Error! Invalid order."

.field public static final EXCEPTION_MESSAGE_NETWORK_ERROR:Ljava/lang/String; = "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3002"

.field public static final ILLEGAL_SIGNTYPE_FORMAT:Ljava/lang/String; = "ILLEGAL_SIGNTYPE_FORMAT"

.field public static final ILLEGAL_SIGN_EMPTY:Ljava/lang/String; = "ILLEGAL_SIGNTYPE_FORMAT"

.field public static final KEY_APP_ID:Ljava/lang/String; = "appId"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "order_desc"

.field public static final KEY_OUT_TRADE_NO:Ljava/lang/String; = "order_outtrade_no"

.field public static final KEY_PRICE:Ljava/lang/String; = "order_price"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_WDJ_AUTH:Ljava/lang/String; = "wdj_auth"

.field private static final LIST_RECHARGE_METHODS:Ljava/lang/String; = null

.field public static final ORDER_QUERY_ALL_URL:Ljava/lang/String; = null

.field public static final RECHARGE_RECORDS_QUERY_ALL_URL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PayImpl"

.field public static final UNICOM_CALLBACK_URL:Ljava/lang/String; = null

.field public static final WDJ_PUBLICK_EY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCd95FnJFhPinpNiE/h4VA6bU1rzRa5+a25BxsnFX8TzquWxqDCoe4xG6QKXMXuKvV57tTRpzRo2jeto40eHKClzEgjx9lTYVb2RFHHFWio/YGTfnqIPTVpi7d7uHY+0FZ0lYL5LlW4E2+CQMxFOPRwfqGzMjs1SDlH7lVrLEVy6QIDAQAB"

.field private static balancePayUrl:Ljava/lang/String;

.field private static basePath:Ljava/lang/String;

.field private static campaignListUrl:Ljava/lang/String;

.field private static createOneUrl:Ljava/lang/String;

.field private static gameCardPayUrl:Ljava/lang/String;

.field private static lock:Ljava/lang/Object;

.field private static promptUrl:Ljava/lang/String;

.field private static queryOrderUrl:Ljava/lang/String;

.field private static rechargePayUrl:Ljava/lang/String;

.field public static rechargeResultUrl:Ljava/lang/String;

.field public static resultUrl:Ljava/lang/String;

.field public static sInstance:Lcom/wandoujia/p4/pay/PayImpl;

.field private static shenzhouPayStatusUrl:Ljava/lang/String;

.field private static shenzhouPayUrl:Ljava/lang/String;

.field public static tokenUrl:Ljava/lang/String;

.field private static unicomPayUrl:Ljava/lang/String;

.field private static unionPayUrl:Ljava/lang/String;

.field private static updateUrl:Ljava/lang/String;


# instance fields
.field private action:Ljava/lang/String;

.field private appContext:Landroid/content/Context;

.field private localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

.field private payCoolDown:Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;

.field private payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

.field private payStatus:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    const-string v0, "https://pay.wandoujia.com/api/uid/token"

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->tokenUrl:Ljava/lang/String;

    .line 46
    const-string v0, "https://pay.wandoujia.com"

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/createandquery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->createOneUrl:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/balancePay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->balancePayUrl:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/chargeandpay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->rechargePayUrl:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/campaign/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->campaignListUrl:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->queryOrderUrl:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/shenzhoupay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->shenzhouPayUrl:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/shenzhouPayStatusNotify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->shenzhouPayStatusUrl:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/gamecardpay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->gameCardPayUrl:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/campaign/prompts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->promptUrl:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/config/versionquery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->updateUrl:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/querychargeandpayorderstatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->resultUrl:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/rechargeorderstatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->rechargeResultUrl:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/unionpay/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->unionPayUrl:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/unicom/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->unicomPayUrl:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    const-string v2, "https://pay"

    const-string v3, "http://innerpay"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/callback/unicomnotify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->UNICOM_CALLBACK_URL:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    const-string v2, "https://pay"

    const-string v3, "http://innerpay"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/callback/alipayshortcutnotify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->ALIPAY_FAST_CALLBACK_URL:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/order/queryAll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->ORDER_QUERY_ALL_URL:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/payRecord/queryAll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->RECHARGE_RECORDS_QUERY_ALL_URL:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pay/recharge/paymethods"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->LIST_RECHARGE_METHODS:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payCoolDown:Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;

    .line 99
    const-string v0, "None"

    iput-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->action:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->CANCEL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payStatus:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    .line 130
    new-instance v0, Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    invoke-direct {v0, p1}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->appContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    return-object v0
.end method

.method public static getFinishStatus()Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/wandoujia/p4/pay/PayImpl;->sInstance:Lcom/wandoujia/p4/pay/PayImpl;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/PayImpl;->payStatus:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    return-object v0
.end method

.method private getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->appContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 303
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->appContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 298
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/wandoujia/p4/pay/PayImpl;
    .locals 1
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wandoujia/p4/pay/PayImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/PayImpl;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    sget-object v0, Lcom/wandoujia/p4/pay/PayImpl;->sInstance:Lcom/wandoujia/p4/pay/PayImpl;

    if-nez v0, :cond_1

    .line 108
    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/pay/PayImpl;->sInstance:Lcom/wandoujia/p4/pay/PayImpl;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/wandoujia/p4/pay/PayImpl;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/PayImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wandoujia/p4/pay/PayImpl;->sInstance:Lcom/wandoujia/p4/pay/PayImpl;

    .line 112
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    sget-object v0, Lcom/wandoujia/p4/pay/PayImpl;->sInstance:Lcom/wandoujia/p4/pay/PayImpl;

    invoke-static {p0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 115
    sget-object v0, Lcom/wandoujia/p4/pay/PayImpl;->sInstance:Lcom/wandoujia/p4/pay/PayImpl;

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMac()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->appContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 308
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOrderResult(Ljava/lang/String;Lagu;Lagt;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 528
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 529
    const-string v1, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    const-string v1, "uid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->resultUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string v1, "chargeOrderId"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getLinkOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V

    .line 541
    :goto_1
    return-void

    .line 535
    :cond_0
    const-string v1, "chargeOrderId"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    const-string v1, "getOrderResult"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "post secretkey is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1
    const-string v0, "MD5"

    .line 706
    invoke-static {p1, p2}, Lcom/wandoujia/p4/pay/utils/MD5;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 708
    const-string v3, "content"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v3, "signType"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v0, "sign"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v0, "version"

    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 714
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/wandoujia/p4/pay/utils/HttpUtil;->post(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/client/CookieStore;)Ljava/lang/String;

    move-result-object v3

    .line 715
    const-string v2, "post"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https cost time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-static {v3}, Lcom/wandoujia/p4/pay/PayImpl$JsonUtil;->json2map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 719
    const-string v0, "content"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 720
    const-string v1, "signType"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 721
    const-string v4, "sign"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 723
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 724
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rsa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 725
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ILLEGAL_SIGNTYPE_FORMAT"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_2
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCd95FnJFhPinpNiE/h4VA6bU1rzRa5+a25BxsnFX8TzquWxqDCoe4xG6QKXMXuKvV57tTRpzRo2jeto40eHKClzEgjx9lTYVb2RFHHFWio/YGTfnqIPTVpi7d7uHY+0FZ0lYL5LlW4E2+CQMxFOPRwfqGzMjs1SDlH7lVrLEVy6QIDAQAB"

    invoke-static {v0, v2, v1}, Lcom/wandoujia/p4/pay/utils/Rsa;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 727
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ILLEGAL_SIGNTYPE_FORMAT"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 730
    const-string v2, "resultStatus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 731
    const-string v2, "post"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NotSuccess:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "resultStatus"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 739
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 740
    const-string v1, "resultStatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 741
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "resultStatus"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v0, v3

    .line 743
    :cond_6
    return-object v0
.end method

.method public static setFinishStatus(Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    sget-object v0, Lcom/wandoujia/p4/pay/PayImpl;->sInstance:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p0, v0, Lcom/wandoujia/p4/pay/PayImpl;->payStatus:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    .line 122
    return-void
.end method


# virtual methods
.method public balancePay(Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Ljava/lang/Long;Lagu;Lagt;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/WandouOrder;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    :try_start_0
    const-string v1, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "orderId"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "orderName"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v1, "orderDesc"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "out_trade_no"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOut_trade_no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "money"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v1, "udid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v1, "imsi"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v1, "imei"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v1, "mac"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 274
    const-string v2, "username"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/model/User;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v2, "cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wdj_auth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v2, "password"

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCd95FnJFhPinpNiE/h4VA6bU1rzRa5+a25BxsnFX8TzquWxqDCoe4xG6QKXMXuKvV57tTRpzRo2jeto40eHKClzEgjx9lTYVb2RFHHFWio/YGTfnqIPTVpi7d7uHY+0FZ0lYL5LlW4E2+CQMxFOPRwfqGzMjs1SDlH7lVrLEVy6QIDAQAB"

    invoke-static {p2, v3}, Lcom/wandoujia/p4/pay/utils/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v2, "payAccountInfo"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v1, "bonusMoney"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->balancePayUrl:Ljava/lang/String;

    new-instance v3, Lcom/wandoujia/p4/pay/PayImpl$2;

    invoke-direct {v3, p0, p4}, Lcom/wandoujia/p4/pay/PayImpl$2;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lagu;)V

    invoke-virtual {v1, v2, v0, v3, p5}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    if-eqz p5, :cond_0

    .line 282
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p5, v1}, Lagt;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public createOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;Lagu;Lagt;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/WandouOrder;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    const-string v0, "createOrder"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;)V

    .line 210
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    :try_start_0
    const-string v1, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v1, "uid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v1, "wdj_auth"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v1, "orderName"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v1, "orderDesc"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v1, "out_trade_no"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOut_trade_no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v1, "money"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v1, "imsi"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v1, "imei"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v1, "mac"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v1, "udid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->createOneUrl:Ljava/lang/String;

    new-instance v3, Lcom/wandoujia/p4/pay/PayImpl$1;

    invoke-direct {v3, p0, p2}, Lcom/wandoujia/p4/pay/PayImpl$1;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lagu;)V

    invoke-virtual {v1, v2, v0, v3, p3}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    if-eqz p3, :cond_0

    .line 226
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Lagt;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public createOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/CallBack;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/WandouOrder;",
            "Lcom/wandoujia/p4/pay/model/CallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lcom/wandoujia/p4/pay/PayImpl$5;

    invoke-direct {v0, p0, p2}, Lcom/wandoujia/p4/pay/PayImpl$5;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    new-instance v1, Lcom/wandoujia/p4/pay/PayImpl$6;

    invoke-direct {v1, p0, p2}, Lcom/wandoujia/p4/pay/PayImpl$6;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/wandoujia/p4/pay/PayImpl;->createOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;Lagu;Lagt;)V

    .line 555
    return-void
.end method

.method public gameCardPay(Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lagu;Lagt;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/WandouOrder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 450
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 451
    const-string v1, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string v1, "orderId"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v1, "uid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string v1, "wdj_auth"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 457
    const-string v2, "cardMoney"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string v2, "password"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string v2, "sn"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v2, "cardTypeCombine"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string v2, "password"

    const-string v3, "password"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCd95FnJFhPinpNiE/h4VA6bU1rzRa5+a25BxsnFX8TzquWxqDCoe4xG6QKXMXuKvV57tTRpzRo2jeto40eHKClzEgjx9lTYVb2RFHHFWio/YGTfnqIPTVpi7d7uHY+0FZ0lYL5LlW4E2+CQMxFOPRwfqGzMjs1SDlH7lVrLEVy6QIDAQAB"

    invoke-static {v3, v4}, Lcom/wandoujia/p4/pay/utils/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string v2, "cardInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->gameCardPayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p6, p7}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    const-string v1, "shenzhouPay"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getPromptText(Ljava/lang/String;Lagu;Lagt;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 487
    const-string v1, "pos"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v1, "udid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 490
    const-string v1, "uid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_0
    const-string v1, "sdk_version"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->promptUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getJSON(Ljava/lang/String;Ljava/util/HashMap;Lagu;Lagt;)V

    .line 494
    return-void
.end method

.method public getToken(Lagu;Lagt;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagu",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    const-string v1, "wdj_auth"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".wandoujia.com"

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->addCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v1, Lcom/wandoujia/p4/pay/PayImpl;->tokenUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getString(Ljava/lang/String;Ljava/util/HashMap;Lagu;Lagt;)V

    .line 204
    return-void
.end method

.method public getUnicomPayInfo(Lcom/wandoujia/p4/pay/model/CallBack;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/CallBack",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 624
    :try_start_0
    const-string v1, "uid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    const-string v1, "wdj_auth"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v1, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    const-string v1, "imsi"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    const-string v1, "imei"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string v1, "mac"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v1, "wdj_auth"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->unicomPayUrl:Ljava/lang/String;

    new-instance v3, Lcom/wandoujia/p4/pay/PayImpl$11;

    invoke-direct {v3, p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$11;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    new-instance v4, Lcom/wandoujia/p4/pay/PayImpl$12;

    invoke-direct {v4, p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$12;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 653
    const-string v1, "PayImpl"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    if-eqz p1, :cond_0

    .line 655
    const/4 v1, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/wandoujia/p4/pay/model/CallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getUnionPayTN(Lcom/wandoujia/p4/pay/model/CallBack;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/CallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 662
    :try_start_0
    const-string v1, "uid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    const-string v1, "wdj_auth"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    const-string v1, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->unionPayUrl:Ljava/lang/String;

    new-instance v3, Lcom/wandoujia/p4/pay/PayImpl$13;

    invoke-direct {v3, p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$13;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    new-instance v4, Lcom/wandoujia/p4/pay/PayImpl$14;

    invoke-direct {v4, p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$14;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    const-string v1, "PayImpl"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 690
    if-eqz p1, :cond_0

    .line 691
    const/4 v1, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/wandoujia/p4/pay/model/CallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getUpdate(Lagu;Lagt;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 500
    const-string v0, "resource"

    const-string v2, "paysdk_apk"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v0, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string v0, "version"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getDownloadVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    .line 505
    const-string v2, "uid"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    :cond_0
    const-string v0, "udid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 509
    const-string v2, "packageName"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 511
    :try_start_1
    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 514
    const-string v2, "packageVersion"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 518
    :goto_0
    :try_start_2
    const-string v0, "p4"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V

    .line 523
    :goto_1
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    const-string v2, "PayImpl"

    invoke-static {v2, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 520
    :catch_1
    move-exception v0

    .line 521
    const-string v1, "getUpdate"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public listRechargeMethods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/CallBack;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/pay/model/CallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 561
    const-string v1, "appkey_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    const-string v1, "wdj_auth"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v1, "imsi"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v1, "imei"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string v1, "mac"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->LIST_RECHARGE_METHODS:Ljava/lang/String;

    new-instance v3, Lcom/wandoujia/p4/pay/PayImpl$7;

    invoke-direct {v3, p0, p4}, Lcom/wandoujia/p4/pay/PayImpl$7;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    new-instance v4, Lcom/wandoujia/p4/pay/PayImpl$8;

    invoke-direct {v4, p0, p4}, Lcom/wandoujia/p4/pay/PayImpl$8;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    const-string v1, "listRechargeMethods"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v1, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/wandoujia/p4/pay/model/CallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public needRecharge()Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v3

    .line 471
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBalance()Ljava/lang/Long;

    move-result-object v4

    .line 472
    const-string v5, "needRecharge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " >"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 472
    goto :goto_0

    :cond_1
    move v1, v2

    .line 475
    goto :goto_1
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payCoolDown:Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;

    const-string v1, "pay"

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->inCD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 143
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error! Invalid order."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    invoke-static {p2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getInstance(Ljava/lang/String;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/wandoujia/p4/pay/activity/PayActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 151
    const-string v3, "order_desc"

    const-string v0, "order_desc"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v3, "order_price"

    const-string v0, "order_price"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v3, "order_outtrade_no"

    const-string v0, "order_outtrade_no"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pay(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/wandoujia/p4/pay/PayImpl;->pay(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public queryCampaignList(Lagu;Lagt;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 367
    :try_start_0
    const-string v1, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v1, "uid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v1, "wdj_auth"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v1, "imsi"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v1, "imei"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v1, "mac"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->campaignListUrl:Ljava/lang/String;

    new-instance v3, Lcom/wandoujia/p4/pay/PayImpl$4;

    invoke-direct {v3, p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$4;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lagu;)V

    invoke-virtual {v1, v2, v0, v3, p2}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V

    .line 390
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    const-string v1, "queryCampaignList"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public queryOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;Lagu;Lagt;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/WandouOrder;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 396
    :try_start_0
    const-string v0, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v0, "order_no"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->queryOrderUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p2, p3}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V

    .line 404
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    const-string v2, "queryOrder"

    invoke-static {v2, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public queryOrderResult(Ljava/lang/String;Lcom/wandoujia/p4/pay/model/CallBack;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/pay/model/CallBack",
            "<",
            "Lcom/wandoujia/p4/pay/model/OrderResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 598
    new-instance v0, Lcom/wandoujia/p4/pay/PayImpl$9;

    invoke-direct {v0, p0, p2}, Lcom/wandoujia/p4/pay/PayImpl$9;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    new-instance v1, Lcom/wandoujia/p4/pay/PayImpl$10;

    invoke-direct {v1, p0, p2}, Lcom/wandoujia/p4/pay/PayImpl$10;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/wandoujia/p4/pay/PayImpl;->getOrderResult(Ljava/lang/String;Lagu;Lagt;)V

    .line 619
    return-void
.end method

.method public recharge(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payCoolDown:Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;

    const-string v1, "recharge"

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/PayImpl$PayCoolDown;->inCD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/pay/activity/RechargeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    const-string v1, "appId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public rechargePay(Ljava/lang/String;Ljava/lang/Long;Lagu;Lagt;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lagu",
            "<",
            "Lcom/wandoujia/p4/pay/model/RechargePaySet;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 316
    :try_start_0
    const-string v0, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v0, "uid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/User;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v0, "wdj_auth"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v0, "orderId"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v0, "chargeType"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v0, "chargeMoney"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v0, "bonusMoney"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v0, "imei"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v0, "imsi"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v0, "mac"

    invoke-direct {p0}, Lcom/wandoujia/p4/pay/PayImpl;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v0, "udid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->rechargePayUrl:Ljava/lang/String;

    new-instance v3, Lcom/wandoujia/p4/pay/PayImpl$3;

    invoke-direct {v3, p0, p3}, Lcom/wandoujia/p4/pay/PayImpl$3;-><init>(Lcom/wandoujia/p4/pay/PayImpl;Lagu;)V

    invoke-virtual {v0, v2, v1, v3, p4}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V

    .line 361
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    if-eqz p4, :cond_0

    .line 331
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p4, v1}, Lagt;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public shenzhouPay(Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lagu;Lagt;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/WandouOrder;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 411
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 412
    const-string v1, "cardMoney"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string v1, "sn"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v1, "cardTypeCombine"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v1, "password"

    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCd95FnJFhPinpNiE/h4VA6bU1rzRa5+a25BxsnFX8TzquWxqDCoe4xG6QKXMXuKvV57tTRpzRo2jeto40eHKClzEgjx9lTYVb2RFHHFWio/YGTfnqIPTVpi7d7uHY+0FZ0lYL5LlW4E2+CQMxFOPRwfqGzMjs1SDlH7lVrLEVy6QIDAQAB"

    invoke-static {p5, v2}, Lcom/wandoujia/p4/pay/utils/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 418
    const-string v2, "cardInfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 421
    const-string v2, "username"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getUser()Lcom/wandoujia/p4/pay/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/model/User;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string v2, "cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wdj_auth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v2, "payAccountInfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string v0, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string v0, "orderId"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->shenzhouPayUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p6, p7}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    const-string v1, "shenzhouPay"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shenzhouStatus(Lcom/wandoujia/p4/pay/model/WandouOrder;Lagu;Lagt;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/pay/model/WandouOrder;",
            "Lagu",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 438
    const-string v1, "orderId"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getOrderId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v1, "appkey_id"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl;->payHttp:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    sget-object v2, Lcom/wandoujia/p4/pay/PayImpl;->shenzhouPayStatusUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/wandoujia/p4/pay/httpapi/PayHttp;->getWithMD5(Ljava/lang/String;Lorg/json/JSONObject;Lagu;Lagt;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    const-string v1, "shenzhouPay"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showMoney(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 479
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "100"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 480
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
