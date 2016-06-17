.class public final Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"


# instance fields
.field public a:I

.field b:I

.field c:I

.field d:I

.field e:Landroid/view/ViewGroup;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Lok;

.field i:Loi;

.field j:Landroid/content/Context;

.field k:Z

.field l:Z

.field m:Z

.field public n:Z

.field o:Z

.field p:Z

.field q:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1643
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    .line 1646
    return-void
.end method


# virtual methods
.method final a(Lok;)V
    .locals 2
    .parameter

    .prologue
    .line 1698
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-ne p1, v0, :cond_1

    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1700
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-eqz v0, :cond_2

    .line 1701
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Loi;

    invoke-virtual {v0, v1}, Lok;->b(Loy;)V

    .line 1703
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    .line 1704
    if-eqz p1, :cond_0

    .line 1705
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Loi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Loi;

    invoke-virtual {p1, v0}, Lok;->a(Loy;)V

    goto :goto_0
.end method
