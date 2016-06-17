.class public final enum Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;
.super Ljava/lang/Enum;
.source "SearchTypeForHint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/search/model/SearchTypeForHint; = null

.field public static final enum ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint; = null

.field public static final enum APP:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint; = null

.field public static final enum GAME:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint; = null

.field public static final KEY_SEARCH_TYPE_FOR_HINT:Ljava/lang/String; = "KEY_SEARCH_TYPE_FOR_HINT"

.field public static final enum STARTPAGE:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;


# instance fields
.field private pattern:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2, v5}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    new-instance v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    const-string v1, "STARTPAGE"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->STARTPAGE:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    new-instance v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    const-string v1, "APP"

    invoke-direct {v0, v1, v4, v3}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->APP:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    new-instance v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v5, v4}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->GAME:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    sget-object v1, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->STARTPAGE:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->APP:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->GAME:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->$VALUES:[Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->pattern:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->$VALUES:[Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    return-object v0
.end method


# virtual methods
.method public final getPattern()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->pattern:I

    return v0
.end method
