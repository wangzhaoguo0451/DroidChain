.class public final Lfj;
.super Lfi;
.source "LayoutInflaterCompatHC.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# direct methods
.method public constructor <init>(Lfk;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lfi;-><init>(Lfk;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lfj;->a:Lfk;

    invoke-interface {v0, p1, p2, p3, p4}, Lfk;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
