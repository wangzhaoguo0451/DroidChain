.class public enum Lcom/wandoujia/p4/tips/TipsType;
.super Ljava/lang/Enum;
.source "TipsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/tips/TipsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NEED_LOGIN:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NO_FEATURE_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NO_GROUP:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NO_MEMBER:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NO_MESSAGE:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NO_PUBLISHED_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NO_RANKING:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NO_REPLIED_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NO_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum COMMUNITY_NO_TOPIC_FEED:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum EMPTY:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum FETCH_FAILED_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum LOADING:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum LOADING_TOP:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum NO_COMMENTS:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum NO_FEEDBACK:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum NO_FLOW_TIPS_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum NO_GAME_RESULT:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum NO_GIFT_RESULT:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum NO_IMAGES:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum NO_NETWORK:Lcom/wandoujia/p4/tips/TipsType;

.field public static final enum NO_NETWORK_FLOATING:Lcom/wandoujia/p4/tips/TipsType;


# instance fields
.field private layoutRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType;

    const-string v1, "NO_COMMENTS"

    const v2, 0x7f0301d8

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/tips/TipsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->NO_COMMENTS:Lcom/wandoujia/p4/tips/TipsType;

    .line 26
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType;

    const-string v1, "NO_IMAGES"

    const v2, 0x7f030037

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/tips/TipsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->NO_IMAGES:Lcom/wandoujia/p4/tips/TipsType;

    .line 27
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType;

    const-string v1, "NO_FEEDBACK"

    const v2, 0x7f030036

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/tips/TipsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->NO_FEEDBACK:Lcom/wandoujia/p4/tips/TipsType;

    .line 29
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$1;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/tips/TipsType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    .line 38
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType;

    const-string v1, "EMPTY"

    const v2, 0x7f0301d5

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/tips/TipsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->EMPTY:Lcom/wandoujia/p4/tips/TipsType;

    .line 40
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$2;

    const-string v1, "NO_NETWORK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->NO_NETWORK:Lcom/wandoujia/p4/tips/TipsType;

    .line 61
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$3;

    const-string v1, "NO_NETWORK_FLOATING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->NO_NETWORK_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    .line 86
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$4;

    const-string v1, "NO_FLOW_TIPS_FLOATING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->NO_FLOW_TIPS_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    .line 101
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$5;

    const-string v1, "NO_GIFT_RESULT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->NO_GIFT_RESULT:Lcom/wandoujia/p4/tips/TipsType;

    .line 114
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$6;

    const-string v1, "NO_GAME_RESULT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->NO_GAME_RESULT:Lcom/wandoujia/p4/tips/TipsType;

    .line 127
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$7;

    const-string v1, "FETCH_FAILED_FLOATING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->FETCH_FAILED_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    .line 243
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$8;

    const-string v1, "COMMUNITY_NO_MESSAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_MESSAGE:Lcom/wandoujia/p4/tips/TipsType;

    .line 252
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$9;

    const-string v1, "COMMUNITY_NO_RANKING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_RANKING:Lcom/wandoujia/p4/tips/TipsType;

    .line 261
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$10;

    const-string v1, "COMMUNITY_NO_GROUP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_GROUP:Lcom/wandoujia/p4/tips/TipsType;

    .line 270
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$11;

    const-string v1, "COMMUNITY_NO_TOPIC_FEED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_TOPIC_FEED:Lcom/wandoujia/p4/tips/TipsType;

    .line 279
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$12;

    const-string v1, "COMMUNITY_NO_PUBLISHED_TOPIC"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_PUBLISHED_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    .line 288
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$13;

    const-string v1, "COMMUNITY_NO_REPLIED_TOPIC"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_REPLIED_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    .line 297
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$14;

    const-string v1, "COMMUNITY_NO_TOPIC"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    .line 306
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$15;

    const-string v1, "COMMUNITY_NO_FEATURE_TOPIC"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_FEATURE_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    .line 314
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$16;

    const-string v1, "COMMUNITY_NEED_LOGIN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NEED_LOGIN:Lcom/wandoujia/p4/tips/TipsType;

    .line 328
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$17;

    const-string v1, "LOADING_TOP"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->LOADING_TOP:Lcom/wandoujia/p4/tips/TipsType;

    .line 336
    new-instance v0, Lcom/wandoujia/p4/tips/TipsType$18;

    const-string v1, "COMMUNITY_NO_MEMBER"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/tips/TipsType$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_MEMBER:Lcom/wandoujia/p4/tips/TipsType;

    .line 23
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/wandoujia/p4/tips/TipsType;

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->NO_COMMENTS:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->NO_IMAGES:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->NO_FEEDBACK:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/tips/TipsType;->EMPTY:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->NO_NETWORK:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->NO_NETWORK_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->NO_FLOW_TIPS_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->NO_GIFT_RESULT:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->NO_GAME_RESULT:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->FETCH_FAILED_FLOATING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_MESSAGE:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_RANKING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_GROUP:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_TOPIC_FEED:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_PUBLISHED_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_REPLIED_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_FEATURE_TOPIC:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NEED_LOGIN:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->LOADING_TOP:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->COMMUNITY_NO_MEMBER:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/tips/TipsType;->$VALUES:[Lcom/wandoujia/p4/tips/TipsType;

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
    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 352
    iput p3, p0, Lcom/wandoujia/p4/tips/TipsType;->layoutRes:I

    .line 353
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/wandoujia/p4/tips/TipsType$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/tips/TipsType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/tips/TipsType;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/tips/TipsType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/tips/TipsType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/wandoujia/p4/tips/TipsType;->$VALUES:[Lcom/wandoujia/p4/tips/TipsType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/tips/TipsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/tips/TipsType;

    return-object v0
.end method


# virtual methods
.method public createTips(Landroid/content/Context;)Lgct;
    .locals 2
    .parameter

    .prologue
    .line 356
    new-instance v0, Lgct;

    iget v1, p0, Lcom/wandoujia/p4/tips/TipsType;->layoutRes:I

    invoke-direct {v0, p1, v1}, Lgct;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
