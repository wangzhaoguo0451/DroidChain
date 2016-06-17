.class public final enum Lcom/wandoujia/clean/model/GarbageType;
.super Ljava/lang/Enum;
.source "GarbageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/clean/model/GarbageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/clean/model/GarbageType;

.field public static final enum MEMORY:Lcom/wandoujia/clean/model/GarbageType;

.field public static final enum SYSTEM_CACHE:Lcom/wandoujia/clean/model/GarbageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/wandoujia/clean/model/GarbageType;

    const-string v1, "MEMORY"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/clean/model/GarbageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/clean/model/GarbageType;->MEMORY:Lcom/wandoujia/clean/model/GarbageType;

    .line 11
    new-instance v0, Lcom/wandoujia/clean/model/GarbageType;

    const-string v1, "SYSTEM_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/clean/model/GarbageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/clean/model/GarbageType;->SYSTEM_CACHE:Lcom/wandoujia/clean/model/GarbageType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/clean/model/GarbageType;

    sget-object v1, Lcom/wandoujia/clean/model/GarbageType;->MEMORY:Lcom/wandoujia/clean/model/GarbageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/clean/model/GarbageType;->SYSTEM_CACHE:Lcom/wandoujia/clean/model/GarbageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/clean/model/GarbageType;->$VALUES:[Lcom/wandoujia/clean/model/GarbageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/clean/model/GarbageType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/clean/model/GarbageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/clean/model/GarbageType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/clean/model/GarbageType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/clean/model/GarbageType;->$VALUES:[Lcom/wandoujia/clean/model/GarbageType;

    invoke-virtual {v0}, [Lcom/wandoujia/clean/model/GarbageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/clean/model/GarbageType;

    return-object v0
.end method
