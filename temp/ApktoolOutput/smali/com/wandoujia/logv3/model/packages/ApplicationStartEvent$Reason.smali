.class public final enum Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;
.super Ljava/lang/Enum;
.source "ApplicationStartEvent.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

.field public static final enum NEW:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

.field public static final enum RELOAD:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

.field public static final enum RESTART:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->NEW:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    .line 141
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    const-string v1, "RELOAD"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->RELOAD:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    .line 145
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    const-string v1, "RESTART"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->RESTART:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    .line 135
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->NEW:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->RELOAD:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->RESTART:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

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
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->value:I

    .line 151
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;
    .locals 1
    .parameter

    .prologue
    .line 135
    const-class v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->value:I

    return v0
.end method
