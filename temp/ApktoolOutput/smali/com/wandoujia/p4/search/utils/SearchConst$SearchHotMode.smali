.class public final enum Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;
.super Ljava/lang/Enum;
.source "SearchConst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

.field public static final enum DAILY:Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

.field public static final enum WEEKLY:Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;


# instance fields
.field private modeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    const-string v1, "WEEKLY"

    const-string v2, "WEEKLY"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;->WEEKLY:Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    .line 44
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    const-string v1, "DAILY"

    const-string v2, "DAILY"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;->DAILY:Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;->WEEKLY:Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;->DAILY:Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;->modeKey:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;

    return-object v0
.end method


# virtual methods
.method public final getModeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchHotMode;->modeKey:Ljava/lang/String;

    return-object v0
.end method
