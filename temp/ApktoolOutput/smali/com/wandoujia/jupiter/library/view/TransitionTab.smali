.class public interface abstract Lcom/wandoujia/jupiter/library/view/TransitionTab;
.super Ljava/lang/Object;
.source "TransitionTab.java"


# static fields
.field public static final a:Lcom/nineoldandroids/animation/ArgbEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/wandoujia/jupiter/library/view/TransitionTab;->a:Lcom/nineoldandroids/animation/ArgbEvaluator;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
.end method

.method public abstract a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;F)V
.end method

.method public abstract b(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
.end method
