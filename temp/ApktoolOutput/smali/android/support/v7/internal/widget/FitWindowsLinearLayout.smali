.class public Landroid/support/v7/internal/widget/FitWindowsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FitWindowsLinearLayout.java"

# interfaces
.implements Lqh;


# instance fields
.field private a:Lqi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/widget/FitWindowsLinearLayout;->a:Lqi;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/support/v7/internal/widget/FitWindowsLinearLayout;->a:Lqi;

    invoke-virtual {v0, p1}, Lqi;->a(Landroid/graphics/Rect;)V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setOnFitSystemWindowsListener(Lqi;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/v7/internal/widget/FitWindowsLinearLayout;->a:Lqi;

    .line 41
    return-void
.end method
