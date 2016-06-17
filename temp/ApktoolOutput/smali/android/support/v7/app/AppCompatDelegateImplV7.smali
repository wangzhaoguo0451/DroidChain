.class public Landroid/support/v7/app/AppCompatDelegateImplV7;
.super Lmx;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Lfk;
.implements Lol;


# instance fields
.field private A:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private final C:Ljava/lang/Runnable;

.field private D:Z

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private G:Lnl;

.field private l:Lqe;

.field public m:Lrj;

.field public n:Landroid/support/v7/internal/widget/ActionBarContextView;

.field public o:Landroid/widget/PopupWindow;

.field public p:Ljava/lang/Runnable;

.field public q:Landroid/view/ViewGroup;

.field public r:Z

.field public s:I

.field private t:Lne;

.field private u:Lni;

.field private v:Z

.field private w:Landroid/view/ViewGroup;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lmx;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 119
    new-instance v0, Lnc;

    invoke-direct {v0, p0}, Lnc;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    .line 142
    return-void
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 849
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmx;->k:Z

    if-eqz v0, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_2

    .line 856
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 857
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 858
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 860
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 863
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 868
    :cond_2
    iget-object v0, p0, Lmx;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 869
    if-eqz v0, :cond_5

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 871
    invoke-virtual {p0, p1, v9}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 858
    goto :goto_1

    :cond_4
    move v4, v3

    .line 860
    goto :goto_2

    .line 875
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 876
    if-eqz v8, :cond_0

    .line 881
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v0, :cond_17

    .line 887
    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    .line 889
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_7

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_7
    sget v5, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_c

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v1, Lns;

    invoke-direct {v1, v0, v3}, Lns;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/content/Context;

    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_panelBackground:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->b:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->d:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lng;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lng;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 897
    :cond_8
    :goto_4
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    move v0, v9

    :goto_5
    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    if-eqz v0, :cond_15

    move v0, v9

    :goto_6
    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 902
    if-nez v0, :cond_19

    .line 903
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 906
    :goto_7
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->b:I

    .line 907
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 909
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_9

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 911
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 913
    :cond_9
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_a

    .line 920
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_a
    move v1, v2

    .line 931
    :cond_b
    :goto_8
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    .line 933
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x3ea

    const/high16 v6, 0x82

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 940
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 941
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->d:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 943
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    iput-boolean v9, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    goto/16 :goto_0

    .line 889
    :cond_c
    sget v1, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto/16 :goto_3

    .line 891
    :cond_d
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 893
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_4

    .line 897
    :cond_e
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Lni;

    if-nez v0, :cond_f

    new-instance v0, Lni;

    invoke-direct {v0, p0, v3}, Lni;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;B)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Lni;

    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Lni;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-nez v1, :cond_10

    const/4 v0, 0x0

    :goto_9
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    if-eqz v0, :cond_14

    move v0, v9

    goto/16 :goto_5

    :cond_10
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Loi;

    if-nez v1, :cond_11

    new-instance v1, Loi;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/content/Context;

    sget v5, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v1, v4, v5}, Loi;-><init>(Landroid/content/Context;I)V

    iput-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Loi;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Loi;

    iput-object v0, v1, Loi;->e:Loz;

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Loi;

    invoke-virtual {v0, v1}, Lok;->a(Loy;)V

    :cond_11
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Loi;

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    iget-object v4, v1, Loi;->c:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v4, :cond_13

    iget-object v4, v1, Loi;->a:Landroid/view/LayoutInflater;

    sget v5, Landroid/support/v7/appcompat/R$layout;->abc_expanded_menu_layout:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, v1, Loi;->c:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v0, v1, Loi;->f:Loj;

    if-nez v0, :cond_12

    new-instance v0, Loj;

    invoke-direct {v0, v1}, Loj;-><init>(Loi;)V

    iput-object v0, v1, Loi;->f:Loj;

    :cond_12
    iget-object v0, v1, Loi;->c:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v4, v1, Loi;->f:Loj;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v1, Loi;->c:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_13
    iget-object v0, v1, Loi;->c:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    goto :goto_9

    :cond_14
    move v0, v3

    goto/16 :goto_5

    :cond_15
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Loi;

    invoke-virtual {v0}, Loi;->b()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_16

    move v0, v9

    goto/16 :goto_6

    :cond_16
    move v0, v3

    goto/16 :goto_6

    .line 922
    :cond_17
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 925
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 926
    if-eqz v0, :cond_18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_b

    :cond_18
    move v1, v2

    goto/16 :goto_8

    :cond_19
    move-object v1, v0

    goto/16 :goto_7
.end method

.method public static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-virtual {v2, v1}, Lok;->a(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-virtual {v1}, Lok;->d()V

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-virtual {v1}, Lok;->clear()V

    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1342
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1355
    :cond_0
    :goto_0
    return v0

    .line 1350
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-eqz v1, :cond_0

    .line 1352
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lok;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static synthetic b(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Lri;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    if-nez v1, :cond_5

    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    if-eqz v4, :cond_7

    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->g:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    :goto_3
    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return p1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    goto :goto_2

    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1063
    iget-boolean v0, p0, Lmx;->k:Z

    if-eqz v0, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return v4

    .line 1068
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    if-eqz v0, :cond_2

    move v4, v3

    .line 1069
    goto :goto_0

    .line 1072
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eq v0, p1, :cond_3

    .line 1074
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-virtual {p0, v0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1077
    :cond_3
    iget-object v0, p0, Lmx;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    .line 1079
    if-eqz v7, :cond_4

    .line 1080
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v7, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    .line 1083
    :cond_4
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-ne v0, v5, :cond_e

    :cond_5
    move v6, v3

    .line 1086
    :goto_1
    if-eqz v6, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_6

    .line 1089
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->f()V

    .line 1092
    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    if-nez v0, :cond_15

    .line 1094
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    if-eqz v0, :cond_11

    .line 1095
    :cond_7
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-nez v0, :cond_b

    .line 1096
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_8

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-ne v0, v5, :cond_18

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_18

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_f

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v9, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_2
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_a

    if-nez v0, :cond_9

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_9
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    move-object v5, v0

    if-eqz v5, :cond_18

    new-instance v0, Lns;

    invoke-direct {v0, v2, v4}, Lns;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :goto_3
    new-instance v2, Lok;

    invoke-direct {v2, v0}, Lok;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lok;->a(Lol;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Lok;)V

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-eqz v0, :cond_0

    .line 1101
    :cond_b
    if-eqz v6, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_d

    .line 1102
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Lne;

    if-nez v0, :cond_c

    .line 1103
    new-instance v0, Lne;

    invoke-direct {v0, p0, v4}, Lne;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;B)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Lne;

    .line 1105
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Lne;

    invoke-interface {v0, v2, v5}, Lqe;->a(Landroid/view/Menu;Loz;)V

    .line 1110
    :cond_d
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-virtual {v0}, Lok;->d()V

    .line 1111
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-interface {v7, v0, v2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1113
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Lok;)V

    .line 1115
    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Lne;

    invoke-interface {v0, v1, v2}, Lqe;->a(Landroid/view/Menu;Loz;)V

    goto/16 :goto_0

    :cond_e
    move v6, v4

    .line 1083
    goto/16 :goto_1

    .line 1096
    :cond_f
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v0, v1

    goto :goto_2

    .line 1123
    :cond_10
    iput-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    .line 1128
    :cond_11
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-virtual {v0}, Lok;->d()V

    .line 1132
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_12

    .line 1133
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lok;->b(Landroid/os/Bundle;)V

    .line 1134
    iput-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Landroid/os/Bundle;

    .line 1138
    :cond_12
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-interface {v7, v4, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1139
    if-eqz v6, :cond_13

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_13

    .line 1142
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Lne;

    invoke-interface {v0, v1, v2}, Lqe;->a(Landroid/view/Menu;Loz;)V

    .line 1144
    :cond_13
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-virtual {v0}, Lok;->e()V

    goto/16 :goto_0

    .line 1149
    :cond_14
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_4
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1151
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v3, :cond_17

    move v0, v3

    :goto_5
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 1152
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    invoke-virtual {v0, v1}, Lok;->setQwertyMode(Z)V

    .line 1153
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-virtual {v0}, Lok;->e()V

    .line 1157
    :cond_15
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    .line 1158
    iput-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    .line 1159
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move v4, v3

    .line 1161
    goto/16 :goto_0

    .line 1149
    :cond_16
    const/4 v0, -0x1

    goto :goto_4

    :cond_17
    move v0, v4

    .line 1151
    goto :goto_5

    :cond_18
    move-object v0, v2

    goto/16 :goto_3
.end method

.method private e(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1366
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:I

    .line 1368
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lgs;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1370
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Z

    .line 1372
    :cond_0
    return-void
.end method

.method private m()V
    .locals 8

    .prologue
    const v5, 0x1020002

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 271
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Z

    if-nez v0, :cond_11

    .line 272
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 274
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    if-nez v1, :cond_3

    .line 275
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v1, :cond_1

    .line 277
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    .line 281
    iput-boolean v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Z

    iput-boolean v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Z

    .line 362
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Z

    if-eqz v0, :cond_0

    .line 288
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 289
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 292
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_2

    .line 293
    new-instance v0, Lns;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Lns;-><init>(Landroid/content/Context;I)V

    .line 299
    :goto_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    .line 302
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lqe;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    .line 304
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    iget-object v1, p0, Lmx;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lqe;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 309
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lqe;->a(I)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    goto :goto_1

    .line 320
    :cond_3
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->g:Z

    if-eqz v1, :cond_4

    .line 321
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    .line 327
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 330
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    new-instance v1, Lge;

    invoke-direct {v1, p0}, Lge;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-static {v0, v1}, Lgs;->a(Landroid/view/View;Lge;)V

    goto :goto_0

    .line 324
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    goto :goto_2

    .line 352
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    check-cast v0, Lqh;

    new-instance v1, Lqi;

    invoke-direct {v1, p0}, Lqi;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-interface {v0, v1}, Lqh;->setOnFitSystemWindowsListener(Lqi;)V

    goto/16 :goto_0

    .line 367
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-nez v0, :cond_7

    .line 368
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    sget v1, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/widget/TextView;

    .line 372
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    invoke-static {v0}, Lri;->b(Landroid/view/View;)V

    .line 374
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 375
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    sget v2, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ContentFrameLayout;

    .line 380
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 381
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 382
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 383
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 387
    :cond_8
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 391
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 392
    invoke-virtual {v1, v5}, Landroid/support/v7/internal/widget/ContentFrameLayout;->setId(I)V

    .line 396
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_9

    .line 397
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :cond_9
    iget-object v0, p0, Lmx;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmx;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 402
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 403
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Ljava/lang/CharSequence;)V

    .line 406
    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    iget-object v5, v1, Landroid/support/v7/internal/widget/ContentFrameLayout;->a:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v1}, Lgs;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->requestLayout()V

    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowMinWidthMajor:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowMinWidthMinor:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_c

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_c
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_d
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_e
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->requestLayout()V

    .line 408
    iput-boolean v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Z

    .line 417
    invoke-virtual {p0, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 418
    iget-boolean v1, p0, Lmx;->k:Z

    if-nez v1, :cond_11

    if-eqz v0, :cond_10

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-nez v0, :cond_11

    .line 419
    :cond_10
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)V

    .line 422
    :cond_11
    return-void

    .line 401
    :cond_12
    iget-object v0, p0, Lmx;->j:Ljava/lang/CharSequence;

    goto/16 :goto_4
.end method


# virtual methods
.method public final a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1312
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1313
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1314
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1315
    aget-object v1, v3, v2

    .line 1316
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1320
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1313
    goto :goto_0

    .line 1314
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1320
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 826
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_0

    .line 832
    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Lnl;

    if-nez v3, :cond_1

    new-instance v3, Lnl;

    invoke-direct {v3}, Lnl;-><init>()V

    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Lnl;

    :cond_1
    if-eqz v0, :cond_4

    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Z

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x1020002

    if-eq v3, v4, :cond_4

    invoke-static {p1}, Lgs;->C(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Lnl;

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    :goto_3
    invoke-static {v3, p4, v0}, Lnl;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/content/Context;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    move v2, v0

    :goto_4
    packed-switch v2, :pswitch_data_0

    if-eq p3, v3, :cond_5

    invoke-virtual {v4, v3, p2, p4}, Lnl;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :sswitch_0
    const-string v1, "EditText"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :sswitch_1
    const-string v2, "Spinner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_4

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    goto :goto_4

    :sswitch_3
    const-string v1, "RadioButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    goto :goto_4

    :sswitch_4
    const-string v1, "CheckedTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    goto :goto_4

    :sswitch_5
    const-string v1, "AutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x5

    goto :goto_4

    :sswitch_6
    const-string v1, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x6

    goto :goto_4

    :sswitch_7
    const-string v1, "RatingBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x7

    goto :goto_4

    :sswitch_8
    const-string v1, "Button"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    goto :goto_4

    :sswitch_9
    const-string v1, "TextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x9

    goto :goto_4

    :pswitch_0
    new-instance v0, Landroid/support/v7/widget/AppCompatEditText;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/support/v7/widget/AppCompatCheckedTextView;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Landroid/support/v7/widget/AppCompatRatingBar;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v0, v3, p4}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    move-object v3, p3

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_7
        -0x56c015e7 -> :sswitch_4
        -0x503aa7ad -> :sswitch_6
        -0x37f7066e -> :sswitch_9
        -0x1440b607 -> :sswitch_1
        0x2e46a6ed -> :sswitch_3
        0x5445f9ba -> :sswitch_5
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_0
        0x77471352 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->m()V

    .line 247
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 249
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 250
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 251
    return-void
.end method

.method public final a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1287
    if-nez p3, :cond_1

    .line 1289
    if-nez p2, :cond_0

    .line 1290
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1291
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1295
    :cond_0
    if-eqz p2, :cond_1

    .line 1297
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    .line 1302
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v0, :cond_3

    .line 1309
    :cond_2
    :goto_0
    return-void

    .line 1305
    :cond_3
    iget-object v0, p0, Lmx;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_2

    .line 1307
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-super {p0, p1}, Lmx;->a(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    .line 150
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lat;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lmx;->d:Landroid/support/v7/app/ActionBar;

    .line 154
    if-nez v0, :cond_1

    .line 155
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Z

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1183
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Lok;)V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1191
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1192
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1193
    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1196
    :cond_2
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    .line 1197
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    .line 1198
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1200
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 1203
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-virtual {p0, v0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1207
    :cond_3
    iput-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    .line 1213
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-ne v0, p1, :cond_0

    .line 1214
    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->m()V

    .line 238
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 240
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 242
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->m()V

    .line 256
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 257
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 258
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 260
    return-void
.end method

.method public final a(Lok;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 549
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Lhe;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lmx;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v1}, Lqe;->b()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lmx;->k:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->d()Z

    .line 550
    :cond_2
    :goto_0
    return-void

    .line 549
    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v1}, Lqe;->e()Z

    iget-boolean v1, p0, Lmx;->k:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Lok;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    invoke-virtual {p0, v0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 741
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 742
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 743
    if-nez v0, :cond_0

    move v0, v1

    .line 745
    :goto_0
    if-eqz v0, :cond_3

    packed-switch v3, :pswitch_data_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 743
    goto :goto_0

    .line 745
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    iget-boolean v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sparse-switch v3, :sswitch_data_0

    :cond_4
    move v0, v2

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Lrj;

    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Lhe;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lmx;->k:Z

    if-nez v0, :cond_d

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->d()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->e()Z

    move-result v0

    goto :goto_2

    :cond_7
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v0, :cond_8

    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    invoke-virtual {p0, v3, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_2

    :cond_9
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    if-eqz v0, :cond_e

    iput-boolean v2, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_d

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    move v0, v1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    move v0, v1

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Lrj;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Lrj;

    invoke-virtual {v0}, Lrj;->c()V

    move v0, v1

    :goto_4
    if-eqz v0, :cond_4

    move v0, v1

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_2

    :cond_e
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lok;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 537
    iget-object v0, p0, Lmx;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmx;->k:Z

    if-nez v1, :cond_0

    .line 539
    invoke-virtual {p1}, Lok;->k()Lok;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 540
    if-eqz v1, :cond_0

    .line 541
    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_0

    .line 844
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->m()V

    .line 265
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 266
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 268
    return-void
.end method

.method final b(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0, p1}, Lqe;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lmx;->d:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lmx;->d:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(Lok;)V
    .locals 2
    .parameter

    .prologue
    .line 1165
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Z

    if-eqz v0, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Z

    .line 1170
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Lqe;

    invoke-interface {v0}, Lqe;->g()V

    .line 1171
    iget-object v0, p0, Lmx;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1172
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmx;->k:Z

    if-nez v1, :cond_1

    .line 1173
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1175
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Z

    goto :goto_0
.end method

.method final b(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 506
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 511
    :cond_0
    const/4 v0, 0x1

    .line 520
    :cond_1
    :goto_0
    return v0

    .line 512
    :cond_2
    if-nez p1, :cond_1

    .line 515
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 516
    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v2, :cond_1

    .line 517
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method final b(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 705
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    .line 706
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v2, :cond_1

    .line 713
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 715
    if-eqz v2, :cond_1

    .line 716
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    .line 736
    :cond_0
    :goto_0
    return v0

    .line 727
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-nez v2, :cond_2

    .line 728
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    .line 729
    invoke-direct {p0, v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 730
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 731
    iput-boolean v1, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    .line 732
    if-nez v3, :cond_0

    :cond_2
    move v0, v1

    .line 736
    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->m()V

    .line 167
    return-void
.end method

.method final c(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 525
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 526
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 532
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1325
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1326
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1327
    if-eqz v0, :cond_1

    .line 1328
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1330
    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v0, v1

    .line 1333
    :cond_2
    aget-object v1, v0, p1

    .line 1334
    if-nez v1, :cond_3

    .line 1335
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1337
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->c()V

    .line 217
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/ActionBar;

    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)V

    .line 586
    return-void
.end method

.method public final i()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 463
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    .line 487
    return v1
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 811
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 812
    invoke-static {v0, p0}, Lfe;->a(Landroid/view/LayoutInflater;Lfk;)V

    .line 814
    :cond_0
    return-void
.end method

.method public final k()Landroid/support/v7/app/ActionBar;
    .locals 3

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->m()V

    .line 172
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 174
    new-instance v1, Lnm;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Z

    invoke-direct {v1, v0, v2}, Lnm;-><init>(Landroid/app/Activity;Z)V

    move-object v0, v1

    .line 178
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 179
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 181
    :cond_1
    return-object v0

    .line 175
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Lnm;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lnm;-><init>(Landroid/app/Dialog;)V

    move-object v0, v1

    goto :goto_0
.end method
