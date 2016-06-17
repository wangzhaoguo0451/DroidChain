.class public final enum Lcom/wandoujia/log/LogEventModel$Priority;
.super Ljava/lang/Enum;
.source "LogEventModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/log/LogEventModel$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/log/LogEventModel$Priority;

.field public static final enum NORMAL:Lcom/wandoujia/log/LogEventModel$Priority;

.field public static final enum REAL_TIME:Lcom/wandoujia/log/LogEventModel$Priority;


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/wandoujia/log/LogEventModel$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/log/LogEventModel$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/log/LogEventModel$Priority;->NORMAL:Lcom/wandoujia/log/LogEventModel$Priority;

    new-instance v0, Lcom/wandoujia/log/LogEventModel$Priority;

    const-string v1, "REAL_TIME"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/log/LogEventModel$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/log/LogEventModel$Priority;->REAL_TIME:Lcom/wandoujia/log/LogEventModel$Priority;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/log/LogEventModel$Priority;

    sget-object v1, Lcom/wandoujia/log/LogEventModel$Priority;->NORMAL:Lcom/wandoujia/log/LogEventModel$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/log/LogEventModel$Priority;->REAL_TIME:Lcom/wandoujia/log/LogEventModel$Priority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/log/LogEventModel$Priority;->$VALUES:[Lcom/wandoujia/log/LogEventModel$Priority;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/wandoujia/log/LogEventModel$Priority;->level:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/log/LogEventModel$Priority;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/wandoujia/log/LogEventModel$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/log/LogEventModel$Priority;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/log/LogEventModel$Priority;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/wandoujia/log/LogEventModel$Priority;->$VALUES:[Lcom/wandoujia/log/LogEventModel$Priority;

    invoke-virtual {v0}, [Lcom/wandoujia/log/LogEventModel$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/log/LogEventModel$Priority;

    return-object v0
.end method


# virtual methods
.method public final getLevel()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/wandoujia/log/LogEventModel$Priority;->level:I

    return v0
.end method
