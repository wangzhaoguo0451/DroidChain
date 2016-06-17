.class public final enum Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;
.super Ljava/lang/Enum;
.source "GameDetailInfoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

.field public static final enum CRASH:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

.field public static final enum NOT_CRASH:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

.field public static final enum UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    const-string v1, "CRASH"

    invoke-direct {v0, v1, v3, v4}, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->CRASH:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    .line 94
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    const-string v1, "NOT_CRASH"

    invoke-direct {v0, v1, v4, v3}, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->NOT_CRASH:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    .line 95
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->CRASH:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->NOT_CRASH:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->code:I

    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;
    .locals 1
    .parameter

    .prologue
    .line 92
    const-class v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$CrashWithoutGsf;->code:I

    return v0
.end method
