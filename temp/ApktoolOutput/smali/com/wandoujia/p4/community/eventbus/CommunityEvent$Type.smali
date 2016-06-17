.class public final enum Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;
.super Ljava/lang/Enum;
.source "CommunityEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum BACK_PRESS:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum BALLOT:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum BALLOT_NEW:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum DELETE_REPLY:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum DELETE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum FEATURE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum JOIN_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum LIKE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum LOGIN:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum POST_REPLY:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum POST_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum QUIT_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum RESIGN_ADMIN:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum SELECT_TAB:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum STICK_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

.field public static final enum UPDATE_TITLE:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "BALLOT"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 10
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "BALLOT_NEW"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT_NEW:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 12
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->LOGIN:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 14
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "DELETE_TOPIC"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->DELETE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 15
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "DELETE_REPLY"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->DELETE_REPLY:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 16
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "FEATURE_TOPIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->FEATURE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 17
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "POST_REPLY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->POST_REPLY:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 18
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "POST_TOPIC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->POST_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 19
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "STICK_TOPIC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->STICK_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 20
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "LIKE_TOPIC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->LIKE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "JOIN_GROUP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->JOIN_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 23
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "QUIT_GROUP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->QUIT_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 25
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "RESIGN_ADMIN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->RESIGN_ADMIN:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 27
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "BACK_PRESS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BACK_PRESS:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 28
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "SELECT_TAB"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->SELECT_TAB:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 29
    new-instance v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const-string v1, "UPDATE_TITLE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->UPDATE_TITLE:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    sget-object v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT_NEW:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->LOGIN:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->DELETE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->DELETE_REPLY:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->FEATURE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->POST_REPLY:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->POST_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->STICK_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->LIKE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->JOIN_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->QUIT_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->RESIGN_ADMIN:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BACK_PRESS:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->SELECT_TAB:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->UPDATE_TITLE:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->$VALUES:[Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->$VALUES:[Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    return-object v0
.end method
