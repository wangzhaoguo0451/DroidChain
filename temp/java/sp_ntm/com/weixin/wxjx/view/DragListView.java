// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.*;
import android.view.animation.*;
import android.widget.*;
import com.weixin.wxjx.activity.MainActivity;
import java.util.Date;

public class DragListView extends ListView
    implements android.widget.AbsListView.OnScrollListener
{
    private static final class DListViewLoadingMore extends Enum
    {

        public static DListViewLoadingMore valueOf(String s)
        {
            return (DListViewLoadingMore)Enum.valueOf(com/weixin/wxjx/view/DragListView$DListViewLoadingMore, s);
        }

        public static DListViewLoadingMore[] values()
        {
            DListViewLoadingMore adlistviewloadingmore[] = ENUM$VALUES;
            int i = adlistviewloadingmore.length;
            DListViewLoadingMore adlistviewloadingmore1[] = new DListViewLoadingMore[i];
            System.arraycopy(adlistviewloadingmore, 0, adlistviewloadingmore1, 0, i);
            return adlistviewloadingmore1;
        }

        private static final DListViewLoadingMore ENUM$VALUES[];
        public static final DListViewLoadingMore LV_LOADING;
        public static final DListViewLoadingMore LV_NORMAL;
        public static final DListViewLoadingMore LV_OVER;

        static 
        {
            LV_NORMAL = new DListViewLoadingMore("LV_NORMAL", 0);
            LV_LOADING = new DListViewLoadingMore("LV_LOADING", 1);
            LV_OVER = new DListViewLoadingMore("LV_OVER", 2);
            DListViewLoadingMore adlistviewloadingmore[] = new DListViewLoadingMore[3];
            adlistviewloadingmore[0] = LV_NORMAL;
            adlistviewloadingmore[1] = LV_LOADING;
            adlistviewloadingmore[2] = LV_OVER;
            ENUM$VALUES = adlistviewloadingmore;
        }

        private DListViewLoadingMore(String s, int i)
        {
            super(s, i);
        }
    }

    private static final class DListViewState extends Enum
    {

        public static DListViewState valueOf(String s)
        {
            return (DListViewState)Enum.valueOf(com/weixin/wxjx/view/DragListView$DListViewState, s);
        }

        public static DListViewState[] values()
        {
            DListViewState adlistviewstate[] = ENUM$VALUES;
            int i = adlistviewstate.length;
            DListViewState adlistviewstate1[] = new DListViewState[i];
            System.arraycopy(adlistviewstate, 0, adlistviewstate1, 0, i);
            return adlistviewstate1;
        }

        private static final DListViewState ENUM$VALUES[];
        public static final DListViewState LV_LOADING;
        public static final DListViewState LV_NORMAL;
        public static final DListViewState LV_PULL_REFRESH;
        public static final DListViewState LV_RELEASE_REFRESH;

        static 
        {
            LV_NORMAL = new DListViewState("LV_NORMAL", 0);
            LV_PULL_REFRESH = new DListViewState("LV_PULL_REFRESH", 1);
            LV_RELEASE_REFRESH = new DListViewState("LV_RELEASE_REFRESH", 2);
            LV_LOADING = new DListViewState("LV_LOADING", 3);
            DListViewState adlistviewstate[] = new DListViewState[4];
            adlistviewstate[0] = LV_NORMAL;
            adlistviewstate[1] = LV_PULL_REFRESH;
            adlistviewstate[2] = LV_RELEASE_REFRESH;
            adlistviewstate[3] = LV_LOADING;
            ENUM$VALUES = adlistviewstate;
        }

        private DListViewState(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface OnRefreshLoadingMoreListener
    {

        public abstract void onLoadMore();

        public abstract void onRefresh();
    }


    static int[] $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewLoadingMore()
    {
        int ai[] = $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewLoadingMore;
        if(ai == null)
        {
            ai = new int[DListViewLoadingMore.values().length];
            try
            {
                ai[DListViewLoadingMore.LV_LOADING.ordinal()] = 2;
            }
            catch(NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai[DListViewLoadingMore.LV_NORMAL.ordinal()] = 1;
            }
            catch(NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai[DListViewLoadingMore.LV_OVER.ordinal()] = 3;
            }
            catch(NoSuchFieldError nosuchfielderror2) { }
            $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewLoadingMore = ai;
        }
        return ai;
    }

    static int[] $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewState()
    {
        int ai[] = $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewState;
        if(ai == null)
        {
            ai = new int[DListViewState.values().length];
            try
            {
                ai[DListViewState.LV_LOADING.ordinal()] = 4;
            }
            catch(NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai[DListViewState.LV_NORMAL.ordinal()] = 1;
            }
            catch(NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai[DListViewState.LV_PULL_REFRESH.ordinal()] = 2;
            }
            catch(NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai[DListViewState.LV_RELEASE_REFRESH.ordinal()] = 3;
            }
            catch(NoSuchFieldError nosuchfielderror3) { }
            $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewState = ai;
        }
        return ai;
    }

    public DragListView(Context context)
    {
        super(context, null);
        mFirstItemIndex = -1;
        mIsRecord = false;
        mlistViewState = DListViewState.LV_NORMAL;
        loadingMoreState = DListViewLoadingMore.LV_NORMAL;
        mBack = false;
        isScroller = true;
        xDistance = 0.0F;
        yDistance = 0.0F;
        initDragListView(context);
    }

    public DragListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mFirstItemIndex = -1;
        mIsRecord = false;
        mlistViewState = DListViewState.LV_NORMAL;
        loadingMoreState = DListViewLoadingMore.LV_NORMAL;
        mBack = false;
        isScroller = true;
        xDistance = 0.0F;
        yDistance = 0.0F;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.weixin.wxjx.R.styleable.DragListView);
        hasAdvertBar = typedarray.getBoolean(0, false);
        initDragListView(context);
        typedarray.recycle();
    }

    private void initAnimation()
    {
        animation = new RotateAnimation(0.0F, -180F, 1, 0.5F, 1, 0.5F);
        animation.setInterpolator(new LinearInterpolator());
        animation.setDuration(250L);
        animation.setFillAfter(true);
        reverseAnimation = new RotateAnimation(-180F, 0.0F, 1, 0.5F, 1, 0.5F);
        reverseAnimation.setInterpolator(new LinearInterpolator());
        reverseAnimation.setDuration(250L);
        reverseAnimation.setFillAfter(true);
    }

    private void initLoadMoreView(Context context)
    {
        mFootView = LayoutInflater.from(context).inflate(0x7f03000d, null);
        mLoadMoreView = mFootView.findViewById(0x7f080066);
        mLoadMoreTextView = (TextView)mFootView.findViewById(0x7f080067);
        mLoadingView = (LinearLayout)mFootView.findViewById(0x7f080068);
        addFooterView(mFootView);
    }

    private void measureView(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        if(layoutparams == null)
            layoutparams = new android.view.ViewGroup.LayoutParams(-1, -2);
        int i = ViewGroup.getChildMeasureSpec(0, 0, layoutparams.width);
        int j = layoutparams.height;
        int k;
        if(j > 0)
            k = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
        else
            k = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        view.measure(i, k);
    }

    private void onRefresh()
    {
        if(onRefreshLoadingMoreListener != null)
        {
            loadingMoreState = DListViewLoadingMore.LV_NORMAL;
            onRefreshLoadingMoreListener.onRefresh();
        }
    }

    private void switchViewState(DListViewState dlistviewstate)
    {
        $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewState()[dlistviewstate.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 41
    //                   2 66
    //                   3 133
    //                   4 181;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_181;
_L1:
        return;
_L2:
        mArrowImageView.clearAnimation();
        mArrowImageView.setImageResource(0x7f020022);
_L6:
        mlistViewState = dlistviewstate;
        if(true) goto _L1; else goto _L3
_L3:
        mHeadProgressBar.setVisibility(8);
        mArrowImageView.setVisibility(0);
        mRefreshTextview.setText("\u4E0B\u62C9\u53EF\u4EE5\u5237\u65B0");
        mArrowImageView.clearAnimation();
        if(mBack)
        {
            mBack = false;
            mArrowImageView.clearAnimation();
            mArrowImageView.startAnimation(reverseAnimation);
        }
          goto _L6
_L4:
        mHeadProgressBar.setVisibility(8);
        mArrowImageView.setVisibility(0);
        mRefreshTextview.setText("\u677E\u5F00\u83B7\u53D6\u66F4\u591A");
        mArrowImageView.clearAnimation();
        mArrowImageView.startAnimation(animation);
          goto _L6
        mHeadProgressBar.setVisibility(0);
        mArrowImageView.clearAnimation();
        mArrowImageView.setVisibility(8);
        mRefreshTextview.setText("\u8F7D\u5165\u4E2D...");
          goto _L6
    }

    private void updateLoadMoreViewState(DListViewLoadingMore dlistviewloadingmore)
    {
        $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewLoadingMore()[dlistviewloadingmore.ordinal()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 42
    //                   2 72
    //                   3 92;
           goto _L1 _L2 _L3 _L4
_L1:
        loadingMoreState = dlistviewloadingmore;
        return;
_L2:
        mLoadingView.setVisibility(8);
        mLoadMoreTextView.setVisibility(0);
        mLoadMoreTextView.setText(0x7f090009);
        continue; /* Loop/switch isn't completed */
_L3:
        mLoadingView.setVisibility(0);
        mLoadMoreTextView.setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L4:
        mLoadingView.setVisibility(8);
        mLoadMoreTextView.setVisibility(0);
        mLoadMoreTextView.setText(0x7f09000a);
        if(true) goto _L1; else goto _L5
_L5:
    }

    void doActionDown(MotionEvent motionevent)
    {
        if(!mIsRecord && mFirstItemIndex == 0)
        {
            mStartY = (int)motionevent.getY();
            mIsRecord = true;
        }
    }

    void doActionMove(MotionEvent motionevent)
    {
        mMoveY = (int)motionevent.getY();
        if(!mIsRecord && mFirstItemIndex == 0)
        {
            mStartY = (int)motionevent.getY();
            mIsRecord = true;
        }
        if(mIsRecord && mlistViewState != DListViewState.LV_LOADING) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = (mMoveY - mStartY) / 2;
        switch($SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewState()[mlistViewState.ordinal()])
        {
        case 1: // '\001'
            if(i > 0)
            {
                mHeadView.setPadding(0, i - mHeadViewHeight, 0, 0);
                switchViewState(DListViewState.LV_PULL_REFRESH);
            }
            break;

        case 2: // '\002'
            setSelection(0);
            mHeadView.setPadding(0, i - mHeadViewHeight, 0, 0);
            if(i < 0)
            {
                isScroller = false;
                switchViewState(DListViewState.LV_NORMAL);
            } else
            if(i > mHeadViewHeight)
                switchViewState(DListViewState.LV_RELEASE_REFRESH);
            break;

        case 3: // '\003'
            setSelection(0);
            mHeadView.setPadding(0, i - mHeadViewHeight, 0, 0);
            if(i >= 0 && i <= mHeadViewHeight)
            {
                mBack = true;
                switchViewState(DListViewState.LV_PULL_REFRESH);
            } else
            if(i < 0)
                switchViewState(DListViewState.LV_NORMAL);
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void doActionUp(MotionEvent motionevent)
    {
        mIsRecord = false;
        isScroller = true;
        mBack = false;
        if(mlistViewState != DListViewState.LV_LOADING) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch($SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewState()[mlistViewState.ordinal()])
        {
        case 2: // '\002'
            mHeadView.setPadding(0, -1 * mHeadViewHeight, 0, 0);
            switchViewState(DListViewState.LV_NORMAL);
            break;

        case 3: // '\003'
            mHeadView.setPadding(0, 0, 0, 0);
            switchViewState(DListViewState.LV_LOADING);
            onRefresh();
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public int getAdvertBarHeight()
    {
        int i;
        if(advertBar != null)
            i = advertBar.getHeight();
        else
            i = 0;
        return i;
    }

    public ViewPager getAdvertPager()
    {
        return advertPager;
    }

    public ViewGroup getPointViewGroup()
    {
        return pointViewGroup;
    }

    public View getmHeadView()
    {
        return mHeadView;
    }

    public void initDragListView(Context context)
    {
        initHeadView(context, (new Date()).toLocaleString());
        initLoadMoreView(context);
        setOnScrollListener(this);
    }

    public void initHeadView(Context context, String s)
    {
        mHeadView = LayoutInflater.from(context).inflate(0x7f03000e, null);
        advertBar = mHeadView.findViewById(0x7f08002a);
        advertPager = (ViewPager)mHeadView.findViewById(0x7f08002b);
        pointViewGroup = (ViewGroup)mHeadView.findViewById(0x7f08002c);
        listViewHeader = mHeadView.findViewById(0x7f080069);
        if(hasAdvertBar)
            advertBar.setVisibility(0);
        else
            advertBar.setVisibility(8);
        mArrowImageView = (ImageView)mHeadView.findViewById(0x7f08006a);
        mArrowImageView.setMinimumWidth(60);
        mHeadProgressBar = (ProgressBar)mHeadView.findViewById(0x7f08006b);
        mRefreshTextview = (TextView)mHeadView.findViewById(0x7f08006c);
        mLastUpdateTextView = (TextView)mHeadView.findViewById(0x7f08006d);
        mLastUpdateTextView.setText((new StringBuilder("\u6700\u8FD1\u66F4\u65B0:")).append(s).toString());
        measureView(mHeadView);
        if(hasAdvertBar)
        {
            mHeadViewWidth = mHeadView.getMeasuredWidth();
            mHeadViewHeight = listViewHeader.getMeasuredHeight();
        } else
        {
            mHeadViewWidth = mHeadView.getMeasuredWidth();
            mHeadViewHeight = mHeadView.getMeasuredHeight();
        }
        addHeaderView(mHeadView, null, false);
        mHeadView.setPadding(0, -1 * mHeadViewHeight, 0, 0);
        initAnimation();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 42
    //                   1 32
    //                   2 71;
           goto _L1 _L2 _L1 _L3
_L1:
        boolean flag = super.onInterceptTouchEvent(motionevent);
_L5:
        return flag;
_L2:
        yDistance = 0.0F;
        xDistance = 0.0F;
        xLast = motionevent.getX();
        yLast = motionevent.getY();
          goto _L1
_L3:
        float f = motionevent.getX();
        float f1 = motionevent.getY();
        xDistance = xDistance + (f - xLast);
        yDistance = yDistance + (f1 - yLast);
        xLast = f;
        yLast = f1;
        if(Math.abs(xDistance) <= Math.abs(yDistance)) goto _L1; else goto _L4
_L4:
        flag = false;
          goto _L5
    }

    public void onLoadMoreComplete(boolean flag)
    {
        if(flag)
            updateLoadMoreViewState(DListViewLoadingMore.LV_OVER);
        else
            updateLoadMoreViewState(DListViewLoadingMore.LV_NORMAL);
    }

    public void onRefreshComplete()
    {
        mHeadView.setPadding(0, -1 * mHeadViewHeight, 0, 0);
        switchViewState(DListViewState.LV_NORMAL);
    }

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        mFirstItemIndex = i;
        mVisibleLastIndex = -1 + (i + j);
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        int j = -1 + getAdapter().getCount();
        if(i == 0 && mVisibleLastIndex == j && onRefreshLoadingMoreListener != null && loadingMoreState == DListViewLoadingMore.LV_NORMAL)
        {
            updateLoadMoreViewState(DListViewLoadingMore.LV_LOADING);
            onRefreshLoadingMoreListener.onLoadMore();
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 47
    //                   1 63
    //                   2 55;
           goto _L1 _L2 _L3 _L4
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_63;
_L5:
        boolean flag;
        if(isScroller)
            flag = super.onTouchEvent(motionevent);
        else
            flag = true;
        return flag;
_L2:
        doActionDown(motionevent);
          goto _L5
_L4:
        doActionMove(motionevent);
          goto _L5
        doActionUp(motionevent);
          goto _L5
    }

    public void setMainActivity(MainActivity mainactivity)
    {
        mainActivity = mainactivity;
    }

    public void setOnRefreshListener(OnRefreshLoadingMoreListener onrefreshloadingmorelistener)
    {
        onRefreshLoadingMoreListener = onrefreshloadingmorelistener;
    }

    private static int $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewLoadingMore[];
    private static int $SWITCH_TABLE$com$weixin$wxjx$view$DragListView$DListViewState[];
    private static final int RATIO = 2;
    private static final String TAG = "DragListView";
    private View advertBar;
    private ViewPager advertPager;
    private Animation animation;
    private boolean hasAdvertBar;
    private boolean isScroller;
    private View listViewHeader;
    private DListViewLoadingMore loadingMoreState;
    private ImageView mArrowImageView;
    private boolean mBack;
    private int mFirstItemIndex;
    private View mFootView;
    private ProgressBar mHeadProgressBar;
    private View mHeadView;
    private int mHeadViewHeight;
    private int mHeadViewWidth;
    private boolean mIsRecord;
    private TextView mLastUpdateTextView;
    private TextView mLoadMoreTextView;
    private View mLoadMoreView;
    private View mLoadingView;
    private int mMoveY;
    private TextView mRefreshTextview;
    private int mStartY;
    private int mVisibleLastIndex;
    private MainActivity mainActivity;
    private DListViewState mlistViewState;
    private OnRefreshLoadingMoreListener onRefreshLoadingMoreListener;
    private ViewGroup pointViewGroup;
    private Animation reverseAnimation;
    private float xDistance;
    private float xLast;
    private float yDistance;
    private float yLast;
}
