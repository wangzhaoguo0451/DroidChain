.class public final enum Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;
.super Ljava/lang/Enum;
.source "SearchConst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

.field public static final enum SINA_WEIBO:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

.field public static final enum WECHAT:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

.field public static final enum WECHAT_TIMELINE:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;


# instance fields
.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    const-string v1, "SINA_WEIBO"

    const-string v2, "com.sina.weibo"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->SINA_WEIBO:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    .line 241
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    const-string v1, "WECHAT"

    const-string v2, "com.tencent.mm"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->WECHAT:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    .line 242
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    const-string v1, "WECHAT_TIMELINE"

    const-string v2, "com.tencent.mm"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->WECHAT_TIMELINE:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    .line 238
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->SINA_WEIBO:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->WECHAT:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->WECHAT_TIMELINE:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    iput-object p3, p0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->packageName:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;
    .locals 1
    .parameter

    .prologue
    .line 238
    const-class v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    return-object v0
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;->packageName:Ljava/lang/String;

    return-object v0
.end method
