.class public final enum Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;
.super Ljava/lang/Enum;
.source "SubscribeConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

.field public static final enum DIVERSION_START_CONTENT_LANDSCAPE:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

.field public static final enum DIVERSION_START_CONTENT_ORIENTATION:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

.field public static final enum DIVERSION_START_HOT_PUBLISHERS:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

.field public static final enum DIVERSION_START_RECOMMENDATION:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

.field public static final enum FUNCTION_LIST_PUBLISHER_ITEM:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

.field public static final enum FUNCTION_ONBOARD_GUIDE:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

.field public static final enum FUNCTION_PROFILE_PUBLISHER_BUTTON:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

.field public static final enum FUNCTION_PROFILE_SUBSET_BUTTON:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

.field public static final enum GUIDE_PROMPT_BLACK_BUTTON:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    const-string v1, "GUIDE_PROMPT_BLACK_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->GUIDE_PROMPT_BLACK_BUTTON:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 17
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    const-string v1, "DIVERSION_START_CONTENT_ORIENTATION"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->DIVERSION_START_CONTENT_ORIENTATION:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 18
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    const-string v1, "DIVERSION_START_CONTENT_LANDSCAPE"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->DIVERSION_START_CONTENT_LANDSCAPE:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 19
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    const-string v1, "DIVERSION_START_HOT_PUBLISHERS"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->DIVERSION_START_HOT_PUBLISHERS:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 20
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    const-string v1, "DIVERSION_START_RECOMMENDATION"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->DIVERSION_START_RECOMMENDATION:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 21
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    const-string v1, "FUNCTION_LIST_PUBLISHER_ITEM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->FUNCTION_LIST_PUBLISHER_ITEM:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    const-string v1, "FUNCTION_PROFILE_PUBLISHER_BUTTON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->FUNCTION_PROFILE_PUBLISHER_BUTTON:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 23
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    const-string v1, "FUNCTION_PROFILE_SUBSET_BUTTON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->FUNCTION_PROFILE_SUBSET_BUTTON:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 24
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    const-string v1, "FUNCTION_ONBOARD_GUIDE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->FUNCTION_ONBOARD_GUIDE:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    sget-object v1, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->GUIDE_PROMPT_BLACK_BUTTON:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->DIVERSION_START_CONTENT_ORIENTATION:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->DIVERSION_START_CONTENT_LANDSCAPE:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->DIVERSION_START_HOT_PUBLISHERS:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->DIVERSION_START_RECOMMENDATION:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->FUNCTION_LIST_PUBLISHER_ITEM:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->FUNCTION_PROFILE_PUBLISHER_BUTTON:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->FUNCTION_PROFILE_SUBSET_BUTTON:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->FUNCTION_ONBOARD_GUIDE:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->$VALUES:[Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->$VALUES:[Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    return-object v0
.end method
