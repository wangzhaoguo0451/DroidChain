.class public final enum Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;
.super Ljava/lang/Enum;
.source "ToolbarViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

.field public static final enum ALPHA:Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

.field public static final enum COLOR_FILTER:Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;->ALPHA:Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    .line 44
    new-instance v0, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    const-string v1, "COLOR_FILTER"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;->COLOR_FILTER:Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;->ALPHA:Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;->COLOR_FILTER:Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;->$VALUES:[Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;->$VALUES:[Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/view/ToolbarViewBinder$BackgroundTransparencyAnimation$DynamicBackground$Type;

    return-object v0
.end method
