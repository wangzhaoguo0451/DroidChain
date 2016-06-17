.class public final enum Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;
.super Ljava/lang/Enum;
.source "BaseSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

.field public static final enum HIGH:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

.field public static final enum LOW:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;->HIGH:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    .line 45
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;->LOW:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;->HIGH:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;->LOW:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;->$VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;->valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;->$VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$CorrConfRange;

    return-object v0
.end method
