.class public final enum Lcom/wandoujia/jupiter/library/view/TransitionTab$State;
.super Ljava/lang/Enum;
.source "TransitionTab.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/library/view/TransitionTab$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

.field public static final enum DARK:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

.field public static final enum LIGHT:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;


# instance fields
.field private final bgColor:I

.field private final indicatorColor:I

.field private final numColorList:Landroid/content/res/ColorStateList;

.field private final titleColorList:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const v9, 0x7f0a01d8

    const v5, 0x7f0a0042

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    const-string v1, "LIGHT"

    const v3, 0x7f0a01d4

    const v4, 0x7f0a01d7

    const v6, 0x7f0a00bf

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->LIGHT:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    .line 20
    new-instance v6, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    const-string v7, "DARK"

    const v11, 0x7f0a00bc

    move v10, v9

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;-><init>(Ljava/lang/String;IIIII)V

    sput-object v6, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->DARK:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    sget-object v1, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->LIGHT:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->DARK:Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    aput-object v1, v0, v8

    sput-object v0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->$VALUES:[Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->numColorList:Landroid/content/res/ColorStateList;

    .line 32
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->titleColorList:Landroid/content/res/ColorStateList;

    .line 34
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->bgColor:I

    .line 35
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->indicatorColor:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/library/view/TransitionTab$State;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/library/view/TransitionTab$State;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->$VALUES:[Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/library/view/TransitionTab$State;

    return-object v0
.end method


# virtual methods
.method public final getBgColor()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->bgColor:I

    return v0
.end method

.method public final getIndicatorColor()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->indicatorColor:I

    return v0
.end method

.method public final getNumColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->numColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getTitleColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->titleColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method
