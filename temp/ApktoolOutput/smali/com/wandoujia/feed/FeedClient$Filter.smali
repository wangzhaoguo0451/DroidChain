.class public final enum Lcom/wandoujia/feed/FeedClient$Filter;
.super Ljava/lang/Enum;
.source "FeedClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/feed/FeedClient$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/feed/FeedClient$Filter;

.field public static final enum ALL:Lcom/wandoujia/feed/FeedClient$Filter;

.field public static final enum LATEST:Lcom/wandoujia/feed/FeedClient$Filter;

.field public static final enum NONE:Lcom/wandoujia/feed/FeedClient$Filter;

.field public static final enum UNREAD:Lcom/wandoujia/feed/FeedClient$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/wandoujia/feed/FeedClient$Filter;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/feed/FeedClient$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/feed/FeedClient$Filter;->ALL:Lcom/wandoujia/feed/FeedClient$Filter;

    .line 24
    new-instance v0, Lcom/wandoujia/feed/FeedClient$Filter;

    const-string v1, "UNREAD"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/feed/FeedClient$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/feed/FeedClient$Filter;->UNREAD:Lcom/wandoujia/feed/FeedClient$Filter;

    .line 25
    new-instance v0, Lcom/wandoujia/feed/FeedClient$Filter;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/feed/FeedClient$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/feed/FeedClient$Filter;->NONE:Lcom/wandoujia/feed/FeedClient$Filter;

    .line 26
    new-instance v0, Lcom/wandoujia/feed/FeedClient$Filter;

    const-string v1, "LATEST"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/feed/FeedClient$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/feed/FeedClient$Filter;->LATEST:Lcom/wandoujia/feed/FeedClient$Filter;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/feed/FeedClient$Filter;

    sget-object v1, Lcom/wandoujia/feed/FeedClient$Filter;->ALL:Lcom/wandoujia/feed/FeedClient$Filter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/feed/FeedClient$Filter;->UNREAD:Lcom/wandoujia/feed/FeedClient$Filter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/feed/FeedClient$Filter;->NONE:Lcom/wandoujia/feed/FeedClient$Filter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/feed/FeedClient$Filter;->LATEST:Lcom/wandoujia/feed/FeedClient$Filter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/feed/FeedClient$Filter;->$VALUES:[Lcom/wandoujia/feed/FeedClient$Filter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/feed/FeedClient$Filter;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/wandoujia/feed/FeedClient$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/feed/FeedClient$Filter;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/feed/FeedClient$Filter;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/wandoujia/feed/FeedClient$Filter;->$VALUES:[Lcom/wandoujia/feed/FeedClient$Filter;

    invoke-virtual {v0}, [Lcom/wandoujia/feed/FeedClient$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/feed/FeedClient$Filter;

    return-object v0
.end method
