.class public final enum Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;
.super Ljava/lang/Enum;
.source "SearchPopupFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

.field public static final enum HOT_QUERIES:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

.field public static final enum NONE_VIEW:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

.field public static final enum RESULT_VIEW:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    const-string v1, "HOT_QUERIES"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->HOT_QUERIES:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    .line 40
    new-instance v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    const-string v1, "RESULT_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->RESULT_VIEW:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    .line 41
    new-instance v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    const-string v1, "NONE_VIEW"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->NONE_VIEW:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->HOT_QUERIES:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->RESULT_VIEW:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->NONE_VIEW:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->$VALUES:[Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;
    .locals 1
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->$VALUES:[Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    return-object v0
.end method
