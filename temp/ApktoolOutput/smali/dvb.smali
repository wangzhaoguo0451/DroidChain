.class public final Ldvb;
.super Ljava/lang/Object;
.source "JupiterToolbarForSearch.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Ldvb;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Ldvb;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-static {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->b(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V

    .line 86
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    return-void
.end method
