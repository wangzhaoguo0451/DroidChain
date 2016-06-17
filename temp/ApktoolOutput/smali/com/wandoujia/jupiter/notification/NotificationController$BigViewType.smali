.class public final enum Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;
.super Ljava/lang/Enum;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

.field public static final enum BIG_PICTURE:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

.field public static final enum BIG_TEXT:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

.field public static final enum PICTURE_ONLY:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    const-string v1, "PICTURE_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->PICTURE_ONLY:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    new-instance v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    const-string v1, "BIG_PICTURE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->BIG_PICTURE:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    new-instance v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    const-string v1, "BIG_TEXT"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->BIG_TEXT:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->PICTURE_ONLY:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->BIG_PICTURE:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->BIG_TEXT:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->$VALUES:[Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;
    .locals 1
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->$VALUES:[Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    return-object v0
.end method
