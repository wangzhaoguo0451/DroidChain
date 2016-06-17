.class public final enum Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;
.super Ljava/lang/Enum;
.source "PageList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

.field public static final enum HIT_CACHE_AND_LOAD_FAILED:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

.field public static final enum HIT_CACHE_AND_LOAD_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

.field public static final enum HIT_CACHE_INTERMEDIATE:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

.field public static final enum HIT_CACHE_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

.field public static final enum MISS_CACHE_AND_LOAD_FAILED:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

.field public static final enum MISS_CACHE_AND_LOAD_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

.field public static final enum NOT_READY:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

.field public static final enum ONGOING:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->NOT_READY:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 36
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    const-string v1, "ONGOING"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->ONGOING:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 37
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    const-string v1, "HIT_CACHE_SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 38
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    const-string v1, "HIT_CACHE_INTERMEDIATE"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_INTERMEDIATE:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 39
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    const-string v1, "HIT_CACHE_AND_LOAD_SUCCESS"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_AND_LOAD_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 40
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    const-string v1, "HIT_CACHE_AND_LOAD_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_AND_LOAD_FAILED:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 41
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    const-string v1, "MISS_CACHE_AND_LOAD_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->MISS_CACHE_AND_LOAD_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 42
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    const-string v1, "MISS_CACHE_AND_LOAD_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->MISS_CACHE_AND_LOAD_FAILED:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->NOT_READY:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->ONGOING:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_INTERMEDIATE:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_AND_LOAD_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_AND_LOAD_FAILED:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->MISS_CACHE_AND_LOAD_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->MISS_CACHE_AND_LOAD_FAILED:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->$VALUES:[Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->$VALUES:[Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    return-object v0
.end method
