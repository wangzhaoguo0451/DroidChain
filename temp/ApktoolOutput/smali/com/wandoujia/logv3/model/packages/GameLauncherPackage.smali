.class public final Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;
.super Lcom/squareup/wire/Message;
.source "GameLauncherPackage.java"


# static fields
.field public static final DEFAULT_GAME_COUNT:Ljava/lang/Integer;


# instance fields
.field public final game_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->DEFAULT_GAME_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 19
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->game_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->game_count:Ljava/lang/Integer;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;-><init>(Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 24
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    .line 25
    :cond_0
    instance-of v0, p1, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->game_count:Ljava/lang/Integer;

    check-cast p1, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->game_count:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->hashCode:I

    .line 32
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->game_count:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->game_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
