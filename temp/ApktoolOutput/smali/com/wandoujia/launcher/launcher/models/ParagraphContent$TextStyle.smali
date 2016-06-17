.class public final enum Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;
.super Ljava/lang/Enum;
.source "ParagraphContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

.field public static final enum AUTHOR:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;
    .annotation runtime Lcwj;
        a = "author"
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;
    .annotation runtime Lcwj;
        a = "normal"
    .end annotation
.end field

.field public static final enum QUOTE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;
    .annotation runtime Lcwj;
        a = "quote"
    .end annotation
.end field

.field public static final enum SUBTITLE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;
    .annotation runtime Lcwj;
        a = "subtitle"
    .end annotation
.end field

.field public static final enum TITLE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;
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
    .locals 7

    .prologue
    .line 25
    new-instance v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    sget v3, Lcom/wandoujia/game_launcher/lib/R$dimen;->text_size_xlarge:I

    sget v4, Lcom/wandoujia/game_launcher/lib/R$color;->text_color_black:I

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->TITLE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    .line 27
    new-instance v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    const-string v1, "SUBTITLE"

    const/4 v2, 0x1

    sget v3, Lcom/wandoujia/game_launcher/lib/R$dimen;->text_size_large:I

    sget v4, Lcom/wandoujia/game_launcher/lib/R$color;->text_color_black:I

    const/high16 v5, 0x3f80

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->SUBTITLE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    .line 29
    new-instance v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$dimen;->text_size_middle:I

    sget v4, Lcom/wandoujia/game_launcher/lib/R$color;->text_color_black:I

    const v5, 0x3f4ccccd

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->NORMAL:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    .line 31
    new-instance v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    const-string v1, "QUOTE"

    const/4 v2, 0x3

    sget v3, Lcom/wandoujia/game_launcher/lib/R$dimen;->text_size_middle:I

    sget v4, Lcom/wandoujia/game_launcher/lib/R$color;->text_color_black:I

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->QUOTE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    .line 33
    new-instance v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    const-string v1, "AUTHOR"

    const/4 v2, 0x4

    sget v3, Lcom/wandoujia/game_launcher/lib/R$dimen;->text_size_micro:I

    sget v4, Lcom/wandoujia/game_launcher/lib/R$color;->pure_black_translucent_50:I

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;-><init>(Ljava/lang/String;IIIFI)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->AUTHOR:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->TITLE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->SUBTITLE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->NORMAL:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->QUOTE:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->AUTHOR:Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->$VALUES:[Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->size:I

    .line 43
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 44
    invoke-direct {p0, v0, p5}, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->getARGBColor(IF)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->color:I

    .line 45
    iput p6, p0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->gravity:I

    .line 46
    return-void
.end method

.method private getARGBColor(IF)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 49
    .line 50
    const/high16 v0, 0x3f80

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 51
    const/high16 v0, 0x437f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 53
    :cond_0
    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->$VALUES:[Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher/launcher/models/ParagraphContent$TextStyle;

    return-object v0
.end method
