.class public final enum Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;
.super Ljava/lang/Enum;
.source "ParagraphContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

.field public static final enum AUTHOR:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;
    .annotation runtime Lcwj;
        a = "author"
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;
    .annotation runtime Lcwj;
        a = "normal"
    .end annotation
.end field

.field public static final enum QUOTE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;
    .annotation runtime Lcwj;
        a = "quote"
    .end annotation
.end field

.field public static final enum SUBTITLE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;
    .annotation runtime Lcwj;
        a = "subtitle"
    .end annotation
.end field

.field public static final enum TITLE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;
    .annotation runtime Lcwj;
        a = "title"
    .end annotation
.end field


# instance fields
.field public final color:I

.field public final gravity:I

.field public final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x2

    const/4 v2, 0x0

    const/4 v14, 0x3

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    .line 24
    new-instance v0, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    const-string v1, "TITLE"

    sget v3, Lcom/wandoujia/entities/R$dimen;->story_text_size_title:I

    sget v4, Lcom/wandoujia/entities/R$color;->text_color_black:I

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v0, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->TITLE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    .line 26
    new-instance v7, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    const-string v8, "SUBTITLE"

    sget v10, Lcom/wandoujia/entities/R$dimen;->story_text_size_subtitle:I

    sget v11, Lcom/wandoujia/entities/R$color;->text_color_dark:I

    move v9, v6

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v7, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->SUBTITLE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    .line 28
    new-instance v7, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    const-string v8, "NORMAL"

    sget v10, Lcom/wandoujia/entities/R$dimen;->story_text_size_normal:I

    sget v11, Lcom/wandoujia/entities/R$color;->text_color_black:I

    const v12, 0x3f4ccccd

    move v9, v15

    move v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v7, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->NORMAL:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    .line 30
    new-instance v7, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    const-string v8, "QUOTE"

    sget v10, Lcom/wandoujia/entities/R$dimen;->story_text_size_quote:I

    sget v11, Lcom/wandoujia/entities/R$color;->text_color_black:I

    move v9, v14

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v7, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->QUOTE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    .line 32
    new-instance v7, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    const-string v8, "AUTHOR"

    const/4 v9, 0x4

    sget v10, Lcom/wandoujia/entities/R$dimen;->story_text_size_quote_author:I

    sget v11, Lcom/wandoujia/entities/R$color;->transparent_black:I

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v7, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->AUTHOR:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    sget-object v1, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->TITLE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->SUBTITLE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->NORMAL:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    aput-object v1, v0, v15

    sget-object v1, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->QUOTE:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    aput-object v1, v0, v14

    const/4 v1, 0x4

    sget-object v2, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->AUTHOR:Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->$VALUES:[Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIFI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFI)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->size:I

    .line 42
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->color:I

    .line 43
    iput p6, p0, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->gravity:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->$VALUES:[Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/game/ParagraphContent$TextStyle;

    return-object v0
.end method
