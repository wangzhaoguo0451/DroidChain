.class public Lcom/wandoujia/p4/pay/feedback/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# static fields
.field public static final APPLECORE_APP_BOUTIQUE_BANNER:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_BOUTIQUE_FASHION:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_BOUTIQUE_LATEST:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_BOUTIQUE_SCORE:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_DETAIL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_FEATURED_GAMES:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_HOMEPAGE:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_LIST_ALL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_LIST_APPROLL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_LIST_AWARD:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_LIST_RECOMMEND:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_LIST_RISE:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_APP_LIST_UCAPP:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_GAME_LIST_AWARD:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_SPECIAL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final APPLECORE_TAGS:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final GET_APP_COMMENT_CAPTCHA:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final PAYMENT_ZENDESK_CREATE_TICKET:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

.field public static final ZENDESK_CREATE_TICKET:Lcom/wandoujia/p4/pay/feedback/RequestInfo;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetAppCommentCaptcha"

    const-string v2, "http://api.wandoujia.com/v1/comments/captcha"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->GET_APP_COMMENT_CAPTCHA:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 12
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetRise"

    const-string v2, "http://api.wandoujia.com/v1/apps?type=noteworthy"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_LIST_RISE:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 14
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetAllApp"

    const-string v2, "http://api.wandoujia.com/v1/apps?type=total"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_LIST_ALL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 16
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetDetail"

    const-string v2, "http://api.wandoujia.com/v1/apps/"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_DETAIL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 18
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetRecommend"

    const-string v2, "http://api.wandoujia.com/v1/recommendations/users"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_LIST_RECOMMEND:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 20
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetAward"

    const-string v2, "http://api.wandoujia.com/v1/apps?type=award&appType=APP"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_LIST_AWARD:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetAward"

    const-string v2, "http://api.wandoujia.com/v1/apps?type=award&appType=GAME"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_GAME_LIST_AWARD:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 24
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetUCChannel"

    const-string v2, "http://api.wandoujia.com/v1/apps?type=ucapp"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_LIST_UCAPP:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 26
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetAppRoll"

    const-string v2, "http://api.wandoujia.com/v1/apps?type=approll"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_LIST_APPROLL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 28
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetFashion"

    const-string v2, "http://api.wandoujia.com/v1/boutique?type=fashion"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_BOUTIQUE_FASHION:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 30
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetLaster"

    const-string v2, "http://api.wandoujia.com/v1/boutique?type=latest"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_BOUTIQUE_LATEST:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 32
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetScore"

    const-string v2, "http://api.wandoujia.com/v1/boutique?type=score"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_BOUTIQUE_SCORE:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 34
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetBanner"

    const-string v2, "http://api.wandoujia.com/v1/boutique?type=banner"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_BOUTIQUE_BANNER:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 36
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetBanner"

    const-string v2, "http://api.wandoujia.com/v1/apps?type=featuredgames"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_FEATURED_GAMES:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 38
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetHomePage"

    const-string v2, "http://api.wandoujia.com/v1/apps?app_type=mobileindex"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_HOMEPAGE:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 40
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "CreateTicket"

    const-string v2, "http://android.help.wandoujia.com/zendesk/api/v2/tickets.json"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->ZENDESK_CREATE_TICKET:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 42
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "CreateTicket"

    const-string v2, "http://devrel.help.wandoujia.com/zendesk/api/v2/tickets.json"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->PAYMENT_ZENDESK_CREATE_TICKET:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 44
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetSpecial"

    const-string v2, "http://api.wandoujia.com/v1/special/"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_SPECIAL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    .line 47
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    const-string v1, "GetTag"

    const-string v2, "http://api.wandoujia.com/v1/apps"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_TAGS:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->mURL:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->mName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static createCategoryAppsRequestInfo(Ljava/lang/String;)Lcom/wandoujia/p4/pay/feedback/RequestInfo;
    .locals 4
    .parameter

    .prologue
    .line 85
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetCategoryApps_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_APP_LIST_ALL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v0
.end method

.method public static createSpecialRequestInfo(Ljava/lang/String;)Lcom/wandoujia/p4/pay/feedback/RequestInfo;
    .locals 4
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_SPECIAL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->getTypeInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_SPECIAL:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-object v0
.end method

.method public static createTagsRequestInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/p4/pay/feedback/RequestInfo;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_TAGS:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->getTypeInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->APPLECORE_TAGS:Lcom/wandoujia/p4/pay/feedback/RequestInfo;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/feedback/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object v0
.end method


# virtual methods
.method public getDetailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/RequestInfo;->mURL:Ljava/lang/String;

    return-object v0
.end method
