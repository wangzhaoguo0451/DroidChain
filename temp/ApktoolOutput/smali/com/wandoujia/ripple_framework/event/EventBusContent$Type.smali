.class public final enum Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;
.super Ljava/lang/Enum;
.source "EventBusContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

.field public static final enum DOWNLOADING_APP_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

.field public static final enum FAVORITE_ITEM_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

.field public static final enum FOLLOW_APP_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

.field public static final enum FOLLOW_DATA_READY:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

.field public static final enum FOLLOW_SYNC_SUCCESS:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

.field public static final enum LOCAL_APP_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

.field public static final enum SHARE_ITEM_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

.field public static final enum WECHAT_SHARE_SUCCESS:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    const-string v1, "DOWNLOADING_APP_CHANGED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->DOWNLOADING_APP_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    .line 21
    new-instance v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    const-string v1, "LOCAL_APP_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->LOCAL_APP_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    .line 23
    new-instance v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    const-string v1, "FOLLOW_APP_CHANGED"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->FOLLOW_APP_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    .line 24
    new-instance v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    const-string v1, "FOLLOW_SYNC_SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->FOLLOW_SYNC_SUCCESS:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    .line 25
    new-instance v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    const-string v1, "FOLLOW_DATA_READY"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->FOLLOW_DATA_READY:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    .line 26
    new-instance v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    const-string v1, "SHARE_ITEM_CHANGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->SHARE_ITEM_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    .line 27
    new-instance v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    const-string v1, "FAVORITE_ITEM_CHANGED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->FAVORITE_ITEM_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    .line 28
    new-instance v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    const-string v1, "WECHAT_SHARE_SUCCESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->WECHAT_SHARE_SUCCESS:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->DOWNLOADING_APP_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->LOCAL_APP_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->FOLLOW_APP_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->FOLLOW_SYNC_SUCCESS:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->FOLLOW_DATA_READY:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->SHARE_ITEM_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->FAVORITE_ITEM_CHANGED:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->WECHAT_SHARE_SUCCESS:Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->$VALUES:[Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->$VALUES:[Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/event/EventBusContent$Type;

    return-object v0
.end method
