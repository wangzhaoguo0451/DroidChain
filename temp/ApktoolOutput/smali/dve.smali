.class public final Ldve;
.super Ljava/lang/Object;
.source "JupiterToolbarForSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Ldve;->b:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    iput-boolean p2, p0, Ldve;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Ldve;->b:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    iget-boolean v1, p0, Ldve;->a:Z

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;Z)V

    .line 143
    return-void
.end method
