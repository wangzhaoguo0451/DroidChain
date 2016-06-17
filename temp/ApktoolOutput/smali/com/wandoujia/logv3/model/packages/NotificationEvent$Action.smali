.class public final enum Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;
.super Ljava/lang/Enum;
.source "NotificationEvent.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

.field public static final enum CLICK:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

.field public static final enum DISMISS:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

.field public static final enum EXPAND:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

.field public static final enum SHOW:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->SHOW:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    .line 156
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->CLICK:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    .line 160
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    const-string v1, "DISMISS"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->DISMISS:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    .line 164
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    const-string v1, "EXPAND"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->EXPAND:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    .line 150
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->SHOW:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->CLICK:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->DISMISS:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->EXPAND:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->$VALUES:[Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

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
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->value:I

    .line 170
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;
    .locals 1
    .parameter

    .prologue
    .line 150
    const-class v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->$VALUES:[Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;->value:I

    return v0
.end method
