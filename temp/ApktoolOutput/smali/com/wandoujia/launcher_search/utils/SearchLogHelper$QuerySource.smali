.class public final enum Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;
.super Ljava/lang/Enum;
.source "SearchLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

.field public static final enum SEARCH:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

.field public static final enum SUGGESTION:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->SEARCH:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    .line 38
    new-instance v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    const-string v1, "SUGGESTION"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->SUGGESTION:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    sget-object v1, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->SEARCH:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->SUGGESTION:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->$VALUES:[Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->$VALUES:[Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    return-object v0
.end method
