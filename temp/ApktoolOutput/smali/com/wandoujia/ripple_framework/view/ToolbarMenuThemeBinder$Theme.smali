.class public final enum Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;
.super Ljava/lang/Enum;
.source "ToolbarMenuThemeBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

.field public static final enum BLACK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

.field public static final enum DARK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

.field public static final enum WHITE:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;


# instance fields
.field drawableLevel:I

.field textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    const-string v1, "WHITE"

    sget v2, Lcom/wandoujia/ripple_framework/R$color;->white_no_transparency:I

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->WHITE:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    .line 18
    new-instance v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    const-string v1, "DARK"

    sget v2, Lcom/wandoujia/ripple_framework/R$color;->text_color_black:I

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->DARK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    .line 19
    new-instance v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    const-string v1, "BLACK"

    sget v2, Lcom/wandoujia/ripple_framework/R$color;->text_color_black:I

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->BLACK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    sget-object v1, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->WHITE:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->DARK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->BLACK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->$VALUES:[Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->drawableLevel:I

    .line 26
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->textColor:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->$VALUES:[Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    return-object v0
.end method
