.class public final enum Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;
.super Ljava/lang/Enum;
.source "GameExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

.field public static final enum COLLAPSE:Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

.field public static final enum EXPAND:Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    new-instance v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    const-string v1, "EXPAND"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;->EXPAND:Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    new-instance v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    const-string v1, "COLLAPSE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;->COLLAPSE:Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    sget-object v1, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;->EXPAND:Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;->COLLAPSE:Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;->$VALUES:[Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

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
    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;
    .locals 1
    .parameter

    .prologue
    .line 228
    const-class v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;->$VALUES:[Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    return-object v0
.end method
